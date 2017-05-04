#ifndef __FEATURE_FLAGS_H__
#define __FEATURE_FLAGS_H__

static const uint FEATURE_FLAG_ALL_MATERIALS = FEATURE_FLAG_MATERIAL_LIT_STANDARD | FEATURE_FLAG_MATERIAL_LIT_SSS | FEATURE_FLAG_MATERIAL_LIT_SPECULAR | FEATURE_FLAG_MATERIAL_LIT_ANISO;

static const uint FeatureVariantFlags[NUM_FEATURE_VARIANTS] =
{
/*  0 */ 0 | FEATURE_FLAG_ALL_MATERIALS,
/*  1 */ FEATURE_FLAG_LIGHT_SKY | FEATURE_FLAG_LIGHT_DIRECTIONAL | FEATURE_FLAG_MATERIAL_LIT_STANDARD,
/*  2 */ FEATURE_FLAG_LIGHT_SKY | FEATURE_FLAG_LIGHT_DIRECTIONAL | FEATURE_FLAG_LIGHT_ENV | FEATURE_FLAG_MATERIAL_LIT_STANDARD,
/*  3 */ FEATURE_FLAG_LIGHT_SKY | FEATURE_FLAG_LIGHT_DIRECTIONAL | FEATURE_FLAG_LIGHT_PUNCTUAL | FEATURE_FLAG_MATERIAL_LIT_STANDARD,
/*  3 */ FEATURE_FLAG_LIGHT_SKY | FEATURE_FLAG_LIGHT_DIRECTIONAL | FEATURE_FLAG_LIGHT_PUNCTUAL | FEATURE_FLAG_LIGHT_ENV | FEATURE_FLAG_MATERIAL_LIT_STANDARD,
/*  5 */ FEATURE_FLAG_LIGHT_SKY | FEATURE_FLAG_LIGHT_DIRECTIONAL | FEATURE_FLAG_LIGHT_AREA | FEATURE_FLAG_MATERIAL_LIT_STANDARD,
/*  6 */ FEATURE_FLAG_LIGHT_SKY | FEATURE_FLAG_LIGHT_DIRECTIONAL | FEATURE_FLAG_LIGHT_AREA | FEATURE_FLAG_LIGHT_PUNCTUAL | FEATURE_FLAG_LIGHT_ENV | FEATURE_FLAG_MATERIAL_LIT_STANDARD,
/*  7 */ FEATURE_FLAG_LIGHT_SKY | FEATURE_FLAG_LIGHT_DIRECTIONAL | FEATURE_FLAG_LIGHT_AREA | FEATURE_FLAG_LIGHT_PUNCTUAL | FEATURE_FLAG_LIGHT_ENV | FEATURE_FLAG_LIGHT_PROJECTOR | FEATURE_FLAG_MATERIAL_LIT_STANDARD,
/*  8 */ FEATURE_FLAG_LIGHT_SKY | FEATURE_FLAG_LIGHT_DIRECTIONAL | FEATURE_FLAG_ALL_MATERIALS,
/*  9 */ FEATURE_FLAG_LIGHT_SKY | FEATURE_FLAG_LIGHT_DIRECTIONAL | FEATURE_FLAG_LIGHT_ENV | FEATURE_FLAG_ALL_MATERIALS,
/* 10 */ FEATURE_FLAG_LIGHT_SKY | FEATURE_FLAG_LIGHT_DIRECTIONAL | FEATURE_FLAG_LIGHT_PUNCTUAL | FEATURE_FLAG_ALL_MATERIALS,
/* 11 */ FEATURE_FLAG_LIGHT_SKY | FEATURE_FLAG_LIGHT_DIRECTIONAL | FEATURE_FLAG_LIGHT_PUNCTUAL | FEATURE_FLAG_LIGHT_ENV | FEATURE_FLAG_ALL_MATERIALS,
/* 12 */ FEATURE_FLAG_LIGHT_SKY | FEATURE_FLAG_LIGHT_DIRECTIONAL | FEATURE_FLAG_LIGHT_AREA | FEATURE_FLAG_ALL_MATERIALS,
/* 13 */ FEATURE_FLAG_LIGHT_SKY | FEATURE_FLAG_LIGHT_DIRECTIONAL | FEATURE_FLAG_LIGHT_AREA | FEATURE_FLAG_LIGHT_PUNCTUAL | FEATURE_FLAG_LIGHT_ENV | FEATURE_FLAG_ALL_MATERIALS,
/* 14 */ FEATURE_FLAG_LIGHT_SKY | FEATURE_FLAG_LIGHT_DIRECTIONAL | FEATURE_FLAG_LIGHT_AREA | FEATURE_FLAG_LIGHT_PUNCTUAL | FEATURE_FLAG_LIGHT_ENV | FEATURE_FLAG_LIGHT_PROJECTOR |  FEATURE_FLAG_ALL_MATERIALS,
/* 15 */ 0xFFFFFFFF
};

uint FeatureFlagsToTileVariant(uint featureFlags)
{
    for(int i = 0; i < NUM_FEATURE_VARIANTS; i++)
    {
        if((featureFlags & FeatureVariantFlags[i]) == featureFlags)
            return i;
    }
    return NUM_FEATURE_VARIANTS - 1;
}

uint TileVariantToFeatureFlags(uint variant)
{
    return FeatureVariantFlags[variant];
}

#endif