def my_collect(array)
    if block_given?
        i = 0
        new_array = Array.new
    
        while i < array.length
            new_array << yield(array[i])
            i = i + 1
        end
        new_array
    else
        puts "No argument was provided. Expecting 1"
    end

end


collection = ['Ruby d', 'javascript f', 'python f', 'objective-c']



my_collect(collection) do |lang|
    lang.upcase
end

my_collect(collection) do |first_name|
    puts first_name.split(" ").first
 end