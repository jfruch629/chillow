class Truck
  attr_reader :box_capacity, :boxes

  def initialize(box_capacity)
    @box_capacity = box_capacity
    @boxes = []
  end

  def full?
    @boxes.size >= @box_capacity
  end

  def add_box(first_name, last_name)
    if @boxes.size << @box_capacity
       @boxes << Box.new(first_name, last_name)
    end
    @boxes
  end

  def remove_box(index)
    @boxes.each_with_index do |box, box_index|
      if box_index == index
        @boxes.delete_at(box_index)
      end
    end
  end

  def unload_all_boxes(first_name, last_name)
    @boxes.delete_if { |box| box.name == "#{first_name} #{last_name}"}
    @boxes
  end
end
