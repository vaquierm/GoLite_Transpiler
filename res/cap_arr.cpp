template <class T, std::size_t N>
constexpr int cap(const std::array<T, N>) noexcept
{
    return (int) N;
}
