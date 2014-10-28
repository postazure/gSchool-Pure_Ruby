


class_str = """John            Foley             john@gschool.it         Beginning snark
  Sylwester       Kelsey            sellie@gmail.com        Ruby Immersive
  Timothy         Rama              tim.rama@gmail.com      Ruby Immersive
  Kane            Baccigalupi       kane@gschool.it         C for dummies
  Nikita          Theodosius        nikita.theo@gmail.com   Ruby Immersive
  Roddy           Eldred            roddy.el@gmail.com      Ruby Immersive
  Martha          Berner            martha@gschool.it       Time travel for beginners
  Kofi            Thomas            k.thomas@hotmail.com    Ruby Immersive"""

class_info = []

class_str.each_line do |text|

  working_ary = text.gsub(/\s/, ' ').strip.split(" ")

  if working_ary.length > 4
    num_extra = (working_ary.length - 4)

    working_ary[3] = (working_ary.last(num_extra+1)).join(" ")
    working_ary.pop(num_extra)
    # puts working_ary

  end

  class_info.push(
    student = {
      first_name: working_ary[0],
      last_name: working_ary[1],
      email: working_ary[2],
      class: working_ary[3]
    }
  )
end

puts class_info
