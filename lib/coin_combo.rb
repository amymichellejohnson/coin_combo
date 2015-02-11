class Fixnum

define_method(:coin_combo) do
  cent_array=[]
  cents=self
  if cents.>=(25)
    until cents.<(25)
      cent_array.push("quarter")
      cents=cents.-(25)
    end
  end
  if cents.>=(10)
    until cents.<10
      cent_array.push("dime")
      cents=cents.-(10)
    end
  end
  if cents.>=(5)
    until cents.<(5)
      cent_array.push("nickel")
      cents=cents.-(5)
    end
  end
  if cents.>=(1)
    until cents.==(0)
      cent_array.push("penny")
      cents=cents.-(1)
    end
  end
  cent_array
end
end
