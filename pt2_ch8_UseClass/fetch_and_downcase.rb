def fetch_and_downcase(arr, index)
  if str = arr[index]
    str.downcase
  end
end

arr = %w[DD Dd dD dd]
p fetch_and_downcase(arr,0)
