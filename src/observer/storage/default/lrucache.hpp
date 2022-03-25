//
// Created by Rehoboam W on 2022/3/17.
//

#ifndef MINIDB_LRUCACHE_HPP
#define MINIDB_LRUCACHE_HPP


#include <unordered_map>
#include <list>
#include <cstddef>
#include <stdexcept>

namespace cache {

    template<typename key_t, typename value_t>
    class lru_cache {
    public:
        typedef typename std::pair<key_t, value_t> key_value_pair_t;
        typedef typename std::list<key_value_pair_t>::iterator list_iterator_t;

        lru_cache(size_t max_size) :
                _max_size(max_size) {
        }

        void put(const key_t& key, const value_t& value) {
          // TODO 将页和页地址放到双向链表的head
          key_value_pair_t &kv_pair = new key_value_pair_t (key, value);
          _cache_items_list.push_front(kv_pair);
          // TODO 如果页已经存在，删除原先双向链表中的页并更新哈希表中页对应的地址
          if (exists(key)) {
              _cache_items_list.erase(_cache_items_map[key]); // erasing by iterator
              _cache_items_map[key] = _cache_items_list.begin();
          }
          // TODO 如果LRU的size超过链最大size，删除双向链表tail的页以及哈希表中的地址
          if (size() > _max_size) {
              _cache_items_map.erase(_cache_items_list.back().first); // erasing by key
              _cache_items_list.pop_back();
          }
        }
        const value_t& get(const key_t& key) {
          // TODO 如果页不存在，throw error
          if (!exists(key)) {
              return errno;
          }
          // TODO 将双向链表中对应页(key)和页地址更新到head
          list_iterator_t list_it = _cache_items_map[key];
          value_t *page_address = &list_it->second;
          _cache_items_list.push_front(*list_it);
          _cache_items_map[key] = _cache_items_list.begin();
          _cache_items_list.erase(list_it);
          // TODO 返回页的地址
          return page_address;
        }

        bool exists(const key_t& key) const {
          // TODO 页(key)存在，返回 true
          // TODO 页(key)不存在，返回 false
          return _cache_items_map.find(key) != _cache_items_map.end();
        }

        size_t size() const {
          // TODO 返回LRU cache size
          return _cache_items_list.size();
        }

    private:
        std::list<key_value_pair_t> _cache_items_list;
        std::unordered_map<key_t, list_iterator_t> _cache_items_map;
        size_t _max_size;
    };

} // namespace cache



#endif //MINIDB_LRUCACHE_HPP
