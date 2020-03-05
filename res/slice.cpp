#include <iostream>
#include <vector>
#include <cstdlib>
template<class T> class Slice {
public:
    Slice() {
        end = 0;
    }
    ~Slice() {
        if (new_itms != nullptr) {
            delete[] new_itms;
        }
    }

    Slice* slice(int start, int end) {
        return new Slice(this, start, end);
    }
    Slice* slice(int start, int end, int max) {
        return new Slice(this, start, end, max);
    }
    Slice* append(T val) {
        return new Slice(val, this);
    }
    T& operator[] (int x) {
        if (x < 0 || x > len()) {
            std::cerr << "Index " << x << " out of bounds" << std::endl;
            exit(0);
        }
        return *(this->v[x]);
    }
    int len() {
        return end;
    }
    int cap() {
        return this->v.size();
    }
private:
    T* new_itms = nullptr;
    int end;
    std::vector<T*> v;
    void copy_vec(std::vector<T*> v, int start, int n) {
        for (int i = start; i < n+start; i++) {
            this->v.push_back(v[i]);
        }
    }
    Slice(T new_val, Slice *old) {
        copy_vec(old->v, 0, old->cap());
        this->end = old->end + 1;
        if (old->cap() == 0) {
            this->new_itms = new T[2];
            this->new_itms[0] = new_val;
            this->new_itms[1] = new_val;
            this->v.push_back(&(this->new_itms[0]));
            this->v.push_back(&(this->new_itms[1])); // Should be default val
        }
        else if (old->end == old->cap()) {
            this->new_itms = new T[old->cap()];
            for (int i = old->end; i < old->cap() * 2; i++) {
                this->new_itms[i - old->end] = new_val;
                this->v.push_back(&(this->new_itms[i - old->end])); // Should be default val
            }
        }
        else {
            *(this->v[old->end]) = new_val;
        }

    }
    Slice(Slice *old, int start, int end) {
        copy_vec(old->v, start, old->cap() - start);
        if (start < 0) {
            std::cerr << "Start index must be greater than 0" << std::endl;
            exit(0);
        }
        if (end > old->cap()) {
            std::cerr << "End index must be less than the capacity" << std::endl;
            exit(0);
        }
        this->end = end - start;
    }
    Slice(Slice *old, int start, int end, int max) {
        copy_vec(old->v, start, max - start);
        if (start < 0 || end < 0 || max < 0) {
            std::cerr << "All indices must be greater than 0" << std::endl;
            exit(0);
        }
        if (end > old->cap()) {
            std::cerr << "End index must be less than the capacity" << std::endl;
            exit(0);
        }
        this->end = end - start;
        if (max < end) {
            std::cerr << "The max index must be greater or equal to the end" << std::endl;
            exit(0);
        }
        if (max > old->cap()) {
            std::cerr << "The new capacity cannot be larger than the old capacity" << std::endl;
            exit(0);
        }
    }
};
