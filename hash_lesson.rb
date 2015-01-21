# ages = {"Mason" => 34,
#         "Ryan" => 6,
#         "Kaeden" => 4,
#         "Ethan" => 2}
#         ages ["Bunny"] = 40
#         #appends her key/val pair on the existing array
#         #symbols vs strings???? they behave the same way, but, no spaces in symbols, :mason is not a variable name, can do :mason.to_s turns it into "mason", some memory benefits, just one copy of a symbol vs own location for each string
#
# puts ages["Mason"]
#
# ages2 = Hash.new
# ages2["Mason"]= 34
# ages2["Ryan"]=6
#
# puts ages2["Mason"]
#
#
# could have done ages = {:mason => 34,
#                         :ryan => 6}  and so on.
#                         without the hashrocket, it looks like
# ages = {mason: 34, ryan: 6}
# and works the same.
# but call it with ages[:mason] still
# if you call ages[:bob] and it doesn't know bob, you get nil
# objects can be keys sometimes, if you want fancy keys, use hashrockets, but in this case, can just do it this way
#   symbols are case sensitive
#     more than two things, easier to do sometimes if you put things down instead of straight across
#       ages.values.include?(34)
#       ages.keys.include?("Mason")
#
#       ages = Hash.new("Yo")
#
#       then everything that hasn't yet been assigned returns yo, default value for all possible keys
#
#
#
#       names = Hash.new(0)
#       names = Hash.new([])
# names[:iron_yard] << "Mason"
# names[:unc] << "Williams"
#
# so you can specify certain types, wait, don't.  doesn't work.  returns mason, williams, etc.
#
# names = Hash.new
# names = {}
#
# if names [:unc]
#   names[:unc] << Mason
# else
#   names [:unc] << Mason
#
#   so if there is an array, you put mason in it, otherwise you start a new one
#

rates = {USD:1.0
         AUD: 1.2
         EUR: 0.84}
currency = Currency.new(3, :AUD)
3 * 0.84  but wait, AUD is worth less, so from Aus to Amer,
so have to first convert to USD, then to the next
number_of_euro = currency.amount * rates[:EUR] / rates[currency.code]
