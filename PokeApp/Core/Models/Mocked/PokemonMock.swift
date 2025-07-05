//
//  PokemonMock.swift
//  PokeApp
//
//  Created by Elioth Quintana on 2/28/24.
//

import Foundation

#if DEBUG
private let pokemonMock = MockPokemonDelegate()

extension Pokemon {
    static var mocked: Pokemon {
        pokemonMock.pokemon
    }
    
    static var mockedList: [Pokemon] {
        pokemonMock.pokemonList
    }
}

private class MockPokemonDelegate {
    let pokemon = Pokemon(
        id: 5,
        order: 5,
        name: "charmeleon",
        sprites: Sprites(
            other: SpriteOther(
                dreamWorld: DreamWorld(
                    frontDefault: "5"),
                officialArtwork: OfficialArtwork(
                    frontDefault: "5",
                    frontShiny: "5"
                )
            )
        ),
        types: [
            PokemonType(
                slot: 1,
                type: PokeType(
                    name: "fire",
                    url: "https://pokeapi.co/api/v2/type/10/"
                )
            )
        ]
    )
    
    let pokemonList = [
        Pokemon(
            id: 1,
            order: 1,
            name: "bulbasaur",
            sprites: Sprites(
                other: SpriteOther(
                    dreamWorld: DreamWorld(
                        frontDefault: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png"
                    ),
                    officialArtwork: OfficialArtwork(
                        frontDefault: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png",
                        frontShiny: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/shiny/1.png"
                    )
                )
            ),
            types: [
                PokemonType(
                    slot: 1,
                    type: PokeType(
                        name: "grass",
                        url: "https://pokeapi.co/api/v2/type/12/"
                    )
                ),
                PokemonType(
                    slot: 2,
                    type: PokeType(
                        name: "poison",
                        url: "https://pokeapi.co/api/v2/type/4/"
                    )
                )
            ]
        ),
        Pokemon(
            id: 2,
            order: 2,
            name: "ivysaur",
            sprites: Sprites(
                other: SpriteOther(
                    dreamWorld: DreamWorld(
                        frontDefault: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/2.png"
                    ),
                    officialArtwork: OfficialArtwork(
                        frontDefault: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/2.png",
                        frontShiny: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/shiny/2.png"
                    )
                )
            ),
            types: [
                PokemonType(
                    slot: 1,
                    type: PokeType(
                        name: "grass",
                        url: "https://pokeapi.co/api/v2/type/12/"
                    )
                ),
                PokemonType(
                    slot: 2,
                    type: PokeType(
                        name: "poison",
                        url: "https://pokeapi.co/api/v2/type/4/"
                    )
                )
            ]
        ),
        Pokemon(
            id: 3,
            order: 3,
            name: "venusaur",
            sprites: Sprites(
                other: SpriteOther(
                    dreamWorld: DreamWorld(
                        frontDefault: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/3.png"
                    ),
                    officialArtwork: OfficialArtwork(
                        frontDefault: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/3.png",
                        frontShiny: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/shiny/3.png"
                    )
                )
            ),
            types: [
                PokemonType(
                    slot: 1,
                    type: PokeType(
                        name: "grass",
                        url: "https://pokeapi.co/api/v2/type/12/"
                    )
                ),
                PokemonType(
                    slot: 2,
                    type: PokeType(
                        name: "poison",
                        url: "https://pokeapi.co/api/v2/type/4/"
                    )
                )
            ]
        ),
        Pokemon(
            id: 4,
            order: 4,
            name: "charmander",
            sprites: Sprites(
                other: SpriteOther(
                    dreamWorld: DreamWorld(
                        frontDefault: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/4.png"
                    ),
                    officialArtwork: OfficialArtwork(
                        frontDefault: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/4.png",
                        frontShiny: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/shiny/4.png"
                    )
                )
            ),
            types: [
                PokemonType(
                    slot: 1,
                    type: PokeType(
                        name: "fire",
                        url: "https://pokeapi.co/api/v2/type/10/"
                    )
                )
            ]
        ),
        Pokemon(
            id: 5,
            order: 5,
            name: "charmeleon",
            sprites: Sprites(
                other: SpriteOther(
                    dreamWorld: DreamWorld(
                        frontDefault: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/5.png"
                    ),
                    officialArtwork: OfficialArtwork(
                        frontDefault: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/5.png",
                        frontShiny: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/shiny/5.png"
                    )
                )
            ),
            types: [
                PokemonType(
                    slot: 1,
                    type: PokeType(
                        name: "fire",
                        url: "https://pokeapi.co/api/v2/type/10/"
                    )
                )
            ]
        ),
        Pokemon(
            id: 6,
            order: 6,
            name: "charizard",
            sprites: Sprites(
                other: SpriteOther(
                    dreamWorld: DreamWorld(
                        frontDefault: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/6.png"
                    ),
                    officialArtwork: OfficialArtwork(
                        frontDefault: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/6.png",
                        frontShiny: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/shiny/6.png"
                    )
                )
            ),
            types: [
                PokemonType(
                    slot: 1,
                    type: PokeType(
                        name: "fire",
                        url: "https://pokeapi.co/api/v2/type/10/"
                    )
                ),
                PokemonType(
                    slot: 2,
                    type: PokeType(
                        name: "flying",
                        url: "https://pokeapi.co/api/v2/type/3/"
                    )
                )
            ]
        ),
        Pokemon(
            id: 7,
            order: 7,
            name: "squirtle",
            sprites: Sprites(
                other: SpriteOther(
                    dreamWorld: DreamWorld(
                        frontDefault: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/7.png"
                    ),
                    officialArtwork: OfficialArtwork(
                        frontDefault: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/7.png",
                        frontShiny: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/shiny/7.png"
                    )
                )
            ),
            types: [
                PokemonType(
                    slot: 1,
                    type: PokeType(
                        name: "water",
                        url: "https://pokeapi.co/api/v2/type/11/"
                    )
                )
            ]
        ),
        Pokemon(
            id: 8,
            order: 8,
            name: "wartortle",
            sprites: Sprites(
                other: SpriteOther(
                    dreamWorld: DreamWorld(
                        frontDefault: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/8.png"
                    ),
                    officialArtwork: OfficialArtwork(
                        frontDefault: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/8.png",
                        frontShiny: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/shiny/8.png"
                    )
                )
            ),
            types: [
                PokemonType(
                    slot: 1,
                    type: PokeType(
                        name: "water",
                        url: "https://pokeapi.co/api/v2/type/11/"
                    )
                )
            ]
        ),
        Pokemon(
            id: 9,
            order: 9,
            name: "blastoise",
            sprites: Sprites(
                other: SpriteOther(
                    dreamWorld: DreamWorld(
                        frontDefault: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/9.png"
                    ),
                    officialArtwork: OfficialArtwork(
                        frontDefault: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/9.png",
                        frontShiny: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/shiny/9.png"
                    )
                )
            ),
            types: [
                PokemonType(
                    slot: 1,
                    type: PokeType(
                        name: "water",
                        url: "https://pokeapi.co/api/v2/type/11/"
                    )
                )
            ]
        ),
        Pokemon(
            id: 10,
            order: 10,
            name: "caterpie",
            sprites: Sprites(
                other: SpriteOther(
                    dreamWorld: DreamWorld(
                        frontDefault: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/10.png"
                    ),
                    officialArtwork: OfficialArtwork(
                        frontDefault: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/10.png",
                        frontShiny: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/shiny/10.png"
                    )
                )
            ),
            types: [
                PokemonType(
                    slot: 1,
                    type: PokeType(
                        name: "bug",
                        url: "https://pokeapi.co/api/v2/type/7/"
                    )
                )
            ]
        ),
        Pokemon(
            id: 11,
            order: 11,
            name: "metapod",
            sprites: Sprites(
                other: SpriteOther(
                    dreamWorld: DreamWorld(
                        frontDefault: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/11.png"
                    ),
                    officialArtwork: OfficialArtwork(
                        frontDefault: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/11.png",
                        frontShiny: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/shiny/11.png"
                    )
                )
            ),
            types: [
                PokemonType(
                    slot: 1,
                    type: PokeType(
                        name: "bug",
                        url: "https://pokeapi.co/api/v2/type/7/"
                    )
                )
            ]
        ),
        Pokemon(
            id: 12,
            order: 12,
            name: "butterfree",
            sprites: Sprites(
                other: SpriteOther(
                    dreamWorld: DreamWorld(
                        frontDefault: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/12.png"
                    ),
                    officialArtwork: OfficialArtwork(
                        frontDefault: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/12.png",
                        frontShiny: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/shiny/12.png"
                    )
                )
            ),
            types: [
                PokemonType(
                    slot: 1,
                    type: PokeType(
                        name: "bug",
                        url: "https://pokeapi.co/api/v2/type/7/"
                    )
                ),
                PokemonType(
                    slot: 2,
                    type: PokeType(
                        name: "flying",
                        url: "https://pokeapi.co/api/v2/type/3/"
                    )
                )
            ]
        ),
        Pokemon(
            id: 13,
            order: 13,
            name: "weedle",
            sprites: Sprites(
                other: SpriteOther(
                    dreamWorld: DreamWorld(
                        frontDefault: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/13.png"
                    ),
                    officialArtwork: OfficialArtwork(
                        frontDefault: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/13.png",
                        frontShiny: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/shiny/13.png"
                    )
                )
            ),
            types: [
                PokemonType(
                    slot: 1,
                    type: PokeType(
                        name: "bug",
                        url: "https://pokeapi.co/api/v2/type/7/"
                    )
                ),
                PokemonType(
                    slot: 2,
                    type: PokeType(
                        name: "poison",
                        url: "https://pokeapi.co/api/v2/type/4/"
                    )
                )
            ]
        ),
        Pokemon(
            id: 14,
            order: 14,
            name: "kakuna",
            sprites: Sprites(
                other: SpriteOther(
                    dreamWorld: DreamWorld(
                        frontDefault: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/14.png"
                    ),
                    officialArtwork: OfficialArtwork(
                        frontDefault: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/14.png",
                        frontShiny: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/shiny/14.png"
                    )
                )
            ),
            types: [
                PokemonType(
                    slot: 1,
                    type: PokeType(
                        name: "bug",
                        url: "https://pokeapi.co/api/v2/type/7/"
                    )
                ),
                PokemonType(
                    slot: 2,
                    type: PokeType(
                        name: "poison",
                        url: "https://pokeapi.co/api/v2/type/4/"
                    )
                )
            ]
        ),
        Pokemon(
            id: 15,
            order: 15,
            name: "beedrill",
            sprites: Sprites(
                other: SpriteOther(
                    dreamWorld: DreamWorld(
                        frontDefault: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/15.png"
                    ),
                    officialArtwork: OfficialArtwork(
                        frontDefault: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/15.png",
                        frontShiny: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/shiny/15.png"
                    )
                )
            ),
            types: [
                PokemonType(
                    slot: 1,
                    type: PokeType(
                        name: "bug",
                        url: "https://pokeapi.co/api/v2/type/7/"
                    )
                ),
                PokemonType(
                    slot: 2,
                    type: PokeType(
                        name: "poison",
                        url: "https://pokeapi.co/api/v2/type/4/"
                    )
                )
            ]
        ),
        Pokemon(
            id: 16,
            order: 16,
            name: "pidgey",
            sprites: Sprites(
                other: SpriteOther(
                    dreamWorld: DreamWorld(
                        frontDefault: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/16.png"
                    ),
                    officialArtwork: OfficialArtwork(
                        frontDefault: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/16.png",
                        frontShiny: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/shiny/16.png"
                    )
                )
            ),
            types: [
                PokemonType(
                    slot: 1,
                    type: PokeType(
                        name: "normal",
                        url: "https://pokeapi.co/api/v2/type/1/"
                    )
                ),
                PokemonType(
                    slot: 2,
                    type: PokeType(
                        name: "flying",
                        url: "https://pokeapi.co/api/v2/type/3/"
                    )
                )
            ]
        ),
        Pokemon(
            id: 17,
            order: 17,
            name: "pidgeotto",
            sprites: Sprites(
                other: SpriteOther(
                    dreamWorld: DreamWorld(
                        frontDefault: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/17.png"
                    ),
                    officialArtwork: OfficialArtwork(
                        frontDefault: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/17.png",
                        frontShiny: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/shiny/17.png"
                    )
                )
            ),
            types: [
                PokemonType(
                    slot: 1,
                    type: PokeType(
                        name: "normal",
                        url: "https://pokeapi.co/api/v2/type/1/"
                    )
                ),
                PokemonType(
                    slot: 2,
                    type: PokeType(
                        name: "flying",
                        url: "https://pokeapi.co/api/v2/type/3/"
                    )
                )
            ]
        ),
        Pokemon(
            id: 18,
            order: 18,
            name: "pidgeot",
            sprites: Sprites(
                other: SpriteOther(
                    dreamWorld: DreamWorld(
                        frontDefault: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/18.png"
                    ),
                    officialArtwork: OfficialArtwork(
                        frontDefault: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/18.png",
                        frontShiny: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/shiny/18.png"
                    )
                )
            ),
            types: [
                PokemonType(
                    slot: 1,
                    type: PokeType(
                        name: "normal",
                        url: "https://pokeapi.co/api/v2/type/1/"
                    )
                ),
                PokemonType(
                    slot: 2,
                    type: PokeType(
                        name: "flying",
                        url: "https://pokeapi.co/api/v2/type/3/"
                    )
                )
            ]
        ),
        Pokemon(
            id: 19,
            order: 19,
            name: "rattata",
            sprites: Sprites(
                other: SpriteOther(
                    dreamWorld: DreamWorld(
                        frontDefault: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/19.png"
                    ),
                    officialArtwork: OfficialArtwork(
                        frontDefault: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/19.png",
                        frontShiny: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/shiny/19.png"
                    )
                )
            ),
            types: [
                PokemonType(
                    slot: 1,
                    type: PokeType(
                        name: "normal",
                        url: "https://pokeapi.co/api/v2/type/1/"
                    )
                )
            ]
        ),
        Pokemon(
            id: 20,
            order: 27,
            name: "raticate",
            sprites: Sprites(
                other: SpriteOther(
                    dreamWorld: DreamWorld(
                        frontDefault: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/20.svg"
                    ),
                    officialArtwork: OfficialArtwork(
                        frontDefault: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/20.png",
                        frontShiny: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/shiny/20.png"
                    )
                )
            ),
            types: [
                PokemonType(
                    slot: 1,
                    type: PokeType(
                        name: "normal",
                        url: "https://pokeapi.co/api/v2/type/1/"
                    )
                )
            ]
        )
    ]
}
#endif
