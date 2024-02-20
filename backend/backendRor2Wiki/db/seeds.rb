# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Item.create(
    [{name: "Armor-Piercing Rounds", 
    rarity:"common", 
    desc: "Deal an additional 20% damage (+20% per stack) to bosses.", 
    dlc: 0
            },
    {
        name: "Backup Magazine",
        rarity:"common",
        desc:"Add +1 (+1 per stack) charge of your Secondary Skill",
        dlc: 0
    },
    {
        name: "Bison Steak",
        rarity:"common",
        desc:"Increases maximum health by 25 (+25 per stack).",
        dlc: 0
    }
        ])