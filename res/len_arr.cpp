template <class T, std::size_t N>
constexpr int len(const std::array<T, N>) noexcept
{
    return (int) N;
}
