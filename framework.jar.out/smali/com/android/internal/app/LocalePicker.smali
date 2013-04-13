.class public Lcom/android/internal/app/LocalePicker;
.super Landroid/app/ListFragment;
.source "LocalePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/LocalePicker$LocaleInfo;,
        Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "LocalePicker"

.field private static final sCountry:Ljava/lang/String;

.field private static final sOperator:Ljava/lang/String;


# instance fields
.field mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    const-string/jumbo v0, "ro.build.target_operator"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/LocalePicker;->sOperator:Ljava/lang/String;

    .line 57
    const-string/jumbo v0, "ro.build.target_country"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/LocalePicker;->sCountry:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 60
    return-void
.end method

.method public static constructAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    const v0, 0x2030006

    const v1, 0x20b0045

    invoke-static {p0, v0, v1}, Lcom/android/internal/app/LocalePicker;->constructAdapter(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static constructAdapter(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;
    .locals 37
    .parameter "context"
    .parameter "layoutId"
    .parameter "fieldId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    .line 104
    .local v28, resources:Landroid/content/res/Resources;
    const-string v5, "294"

    .line 105
    .local v5, MK_MCC:Ljava/lang/String;
    const-string/jumbo v34, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v34 .. v34}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v30

    .line 106
    .local v30, simOperator:Ljava/lang/String;
    const/4 v7, 0x0

    .line 108
    .local v7, currentMCC:Ljava/lang/String;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v34

    const/16 v35, 0x2

    move/from16 v0, v34

    move/from16 v1, v35

    if-le v0, v1, :cond_0

    .line 109
    const/16 v34, 0x0

    const/16 v35, 0x3

    move-object/from16 v0, v30

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 113
    :cond_0
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v25, missedLocalesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v34, "bs_BA"

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    const-string v34, "et_EE"

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    const-string v34, "is_IS"

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    const-string v34, "kk_KZ"

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v24, missedLocalesDisplayNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v34, "Bosanski"

    move-object/from16 v0, v24

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    const-string v34, "Eesti"

    move-object/from16 v0, v24

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    const-string/jumbo v34, "\u00cdslenska"

    move-object/from16 v0, v24

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    const-string/jumbo v34, "\u049a\u0430\u0437\u0430\u049b"

    move-object/from16 v0, v24

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v34, Lcom/android/internal/app/LocalePicker;->sOperator:Ljava/lang/String;

    const-string v35, "VDF"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_1

    sget-object v34, Lcom/android/internal/app/LocalePicker;->sOperator:Ljava/lang/String;

    const-string v35, "OPEN"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_2

    sget-object v34, Lcom/android/internal/app/LocalePicker;->sCountry:Ljava/lang/String;

    const-string v35, "EU"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_2

    .line 127
    :cond_1
    const-string v34, "eu_ES"

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    const-string v34, "gl_ES"

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    const-string v34, "Basque"

    move-object/from16 v0, v24

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    const-string v34, "Galician"

    move-object/from16 v0, v24

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_2
    if-eqz v7, :cond_3

    .line 135
    const-string/jumbo v34, "mk_MK"

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    const-string v34, "294"

    move-object/from16 v0, v34

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_8

    .line 138
    const-string v34, "Macedonian"

    move-object/from16 v0, v24

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_3
    :goto_0
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v34

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    .line 145
    .local v22, missedLocales:[Ljava/lang/String;
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v34

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    .line 147
    .local v23, missedLocalesDisplayName:[Ljava/lang/String;
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 148
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 151
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v15, languageOfTwoLength:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v34, Lcom/android/internal/app/LocalePicker;->sOperator:Ljava/lang/String;

    const-string v35, "VIV"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_4

    sget-object v34, Lcom/android/internal/app/LocalePicker;->sOperator:Ljava/lang/String;

    const-string v35, "TCL"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_4

    const-string v34, "SCA"

    const-string/jumbo v35, "ro.build.target_region"

    invoke-static/range {v35 .. v35}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_5

    .line 153
    :cond_4
    const-string v34, "es"

    move-object/from16 v0, v34

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_5
    sget-object v34, Lcom/android/internal/app/LocalePicker;->sOperator:Ljava/lang/String;

    const-string v35, "VDF"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_7

    sget-object v34, Lcom/android/internal/app/LocalePicker;->sOperator:Ljava/lang/String;

    const-string v35, "LGU"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_7

    sget-object v34, Lcom/android/internal/app/LocalePicker;->sOperator:Ljava/lang/String;

    const-string v35, "SKT"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_7

    sget-object v34, Lcom/android/internal/app/LocalePicker;->sOperator:Ljava/lang/String;

    const-string v35, "KT"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_7

    sget-object v34, Lcom/android/internal/app/LocalePicker;->sOperator:Ljava/lang/String;

    const-string v35, "OPEN"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_6

    sget-object v34, Lcom/android/internal/app/LocalePicker;->sCountry:Ljava/lang/String;

    const-string v35, "CIS"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_7

    :cond_6
    sget-object v34, Lcom/android/internal/app/LocalePicker;->sOperator:Ljava/lang/String;

    const-string v35, "OPEN"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_a

    sget-object v34, Lcom/android/internal/app/LocalePicker;->sCountry:Ljava/lang/String;

    const-string v35, "EU"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_a

    .line 171
    :cond_7
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v20

    .line 172
    .local v20, locales_t:[Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v34, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v35, v0

    add-int v34, v34, v35

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    .line 175
    .local v19, locales:[Ljava/lang/String;
    const/16 v18, 0x0

    .local v18, localeTotal:I
    :goto_1
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v18

    move/from16 v1, v34

    if-ge v0, v1, :cond_9

    .line 176
    aget-object v34, v20, v18

    aput-object v34, v19, v18

    .line 175
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 140
    .end local v15           #languageOfTwoLength:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v18           #localeTotal:I
    .end local v19           #locales:[Ljava/lang/String;
    .end local v20           #locales_t:[Ljava/lang/String;
    .end local v22           #missedLocales:[Ljava/lang/String;
    .end local v23           #missedLocalesDisplayName:[Ljava/lang/String;
    :cond_8
    const-string v34, "FYROM"

    move-object/from16 v0, v24

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 178
    .restart local v15       #languageOfTwoLength:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v18       #localeTotal:I
    .restart local v19       #locales:[Ljava/lang/String;
    .restart local v20       #locales_t:[Ljava/lang/String;
    .restart local v22       #missedLocales:[Ljava/lang/String;
    .restart local v23       #missedLocalesDisplayName:[Ljava/lang/String;
    :cond_9
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    if-ge v11, v0, :cond_b

    .line 179
    add-int v34, v18, v11

    aget-object v35, v22, v11

    aput-object v35, v19, v34

    .line 178
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 183
    .end local v11           #i:I
    .end local v18           #localeTotal:I
    .end local v19           #locales:[Ljava/lang/String;
    .end local v20           #locales_t:[Ljava/lang/String;
    :cond_a
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v19

    .line 184
    .restart local v19       #locales:[Ljava/lang/String;
    const/16 v20, 0x0

    .line 189
    .restart local v20       #locales_t:[Ljava/lang/String;
    :cond_b
    const v34, 0x107000a

    move-object/from16 v0, v28

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v31

    .line 190
    .local v31, specialLocaleCodes:[Ljava/lang/String;
    const v34, 0x107000b

    move-object/from16 v0, v28

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v32

    .line 193
    .local v32, specialLocaleNames:[Ljava/lang/String;
    sget-object v34, Lcom/android/internal/app/LocalePicker;->sOperator:Ljava/lang/String;

    const-string v35, "VZW"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_19

    .line 194
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v21

    .line 195
    .local v21, locales_tmp:[Ljava/lang/String;
    const/16 v34, 0x0

    const-string v35, ""

    aput-object v35, v19, v34

    .line 196
    const/4 v11, 0x1

    .restart local v11       #i:I
    :goto_3
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    if-ge v11, v0, :cond_2e

    .line 197
    aget-object v29, v21, v11

    .line 199
    .local v29, s:Ljava/lang/String;
    const/16 v34, 0x0

    const/16 v35, 0x2

    move-object/from16 v0, v29

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    const-string v35, "en"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_e

    .line 200
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v34

    const/16 v35, 0x2

    move/from16 v0, v34

    move/from16 v1, v35

    if-gt v0, v1, :cond_d

    .line 201
    const/16 v34, 0x1

    const/16 v35, 0x0

    const/16 v36, 0x2

    move-object/from16 v0, v29

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v35

    aput-object v35, v19, v34

    .line 196
    :cond_c
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 205
    :cond_d
    const/16 v34, 0x2

    aput-object v29, v19, v34

    goto :goto_4

    .line 209
    :cond_e
    const/16 v34, 0x0

    const/16 v35, 0x2

    move-object/from16 v0, v29

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    const-string v35, "es"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_10

    .line 210
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v34

    const/16 v35, 0x2

    move/from16 v0, v34

    move/from16 v1, v35

    if-gt v0, v1, :cond_f

    .line 211
    const/16 v34, 0x3

    const/16 v35, 0x0

    const/16 v36, 0x2

    move-object/from16 v0, v29

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v35

    aput-object v35, v19, v34

    goto :goto_4

    .line 215
    :cond_f
    const/16 v34, 0x4

    aput-object v29, v19, v34

    goto :goto_4

    .line 219
    :cond_10
    const/16 v34, 0x0

    const/16 v35, 0x2

    move-object/from16 v0, v29

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    const-string/jumbo v35, "zh"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_11

    .line 220
    const/16 v34, 0x5

    aput-object v29, v19, v34

    goto :goto_4

    .line 223
    :cond_11
    const/16 v34, 0x0

    const/16 v35, 0x2

    move-object/from16 v0, v29

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    const-string v35, "ko"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_13

    .line 224
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v34

    const/16 v35, 0x2

    move/from16 v0, v34

    move/from16 v1, v35

    if-gt v0, v1, :cond_12

    .line 225
    const/16 v34, 0x6

    const/16 v35, 0x0

    const/16 v36, 0x2

    move-object/from16 v0, v29

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v35

    aput-object v35, v19, v34

    goto/16 :goto_4

    .line 229
    :cond_12
    const/16 v34, 0x7

    aput-object v29, v19, v34

    goto/16 :goto_4

    .line 233
    :cond_13
    const/16 v34, 0x0

    const/16 v35, 0x2

    move-object/from16 v0, v29

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    const-string v35, "fr"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_15

    .line 234
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v34

    const/16 v35, 0x2

    move/from16 v0, v34

    move/from16 v1, v35

    if-gt v0, v1, :cond_14

    .line 235
    const/16 v34, 0x8

    const/16 v35, 0x0

    const/16 v36, 0x2

    move-object/from16 v0, v29

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v35

    aput-object v35, v19, v34

    goto/16 :goto_4

    .line 239
    :cond_14
    const/16 v34, 0x9

    aput-object v29, v19, v34

    goto/16 :goto_4

    .line 243
    :cond_15
    const/16 v34, 0x0

    const/16 v35, 0x2

    move-object/from16 v0, v29

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    const-string v35, "de"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_17

    .line 244
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v34

    const/16 v35, 0x2

    move/from16 v0, v34

    move/from16 v1, v35

    if-gt v0, v1, :cond_16

    .line 245
    const/16 v34, 0xa

    const/16 v35, 0x0

    const/16 v36, 0x2

    move-object/from16 v0, v29

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v35

    aput-object v35, v19, v34

    goto/16 :goto_4

    .line 249
    :cond_16
    const/16 v34, 0xb

    aput-object v29, v19, v34

    goto/16 :goto_4

    .line 253
    :cond_17
    const/16 v34, 0x0

    const/16 v35, 0x2

    move-object/from16 v0, v29

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    const-string v35, "it"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_c

    .line 254
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v34

    const/16 v35, 0x2

    move/from16 v0, v34

    move/from16 v1, v35

    if-gt v0, v1, :cond_18

    .line 255
    const/16 v34, 0xc

    const/16 v35, 0x0

    const/16 v36, 0x2

    move-object/from16 v0, v29

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v35

    aput-object v35, v19, v34

    goto/16 :goto_4

    .line 259
    :cond_18
    const/16 v34, 0xd

    aput-object v29, v19, v34

    goto/16 :goto_4

    .line 265
    .end local v11           #i:I
    .end local v21           #locales_tmp:[Ljava/lang/String;
    .end local v29           #s:Ljava/lang/String;
    :cond_19
    sget-object v34, Lcom/android/internal/app/LocalePicker;->sOperator:Ljava/lang/String;

    const-string v35, "OPEN"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_21

    sget-object v34, Lcom/android/internal/app/LocalePicker;->sCountry:Ljava/lang/String;

    const-string v35, "CIS"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_21

    .line 268
    invoke-static/range {v19 .. v19}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 276
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    .line 278
    .restart local v21       #locales_tmp:[Ljava/lang/String;
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_5
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    if-ge v11, v0, :cond_1a

    .line 280
    aget-object v34, v19, v11

    aput-object v34, v21, v11

    .line 281
    const-string v34, ""

    aput-object v34, v19, v11

    .line 278
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 284
    :cond_1a
    const/4 v11, 0x1

    :goto_6
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    if-ge v11, v0, :cond_2e

    .line 285
    aget-object v29, v21, v11

    .line 288
    .restart local v29       #s:Ljava/lang/String;
    const/16 v34, 0x0

    const/16 v35, 0x2

    move-object/from16 v0, v29

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    const-string v35, "en"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_1c

    .line 289
    const/16 v34, 0x1

    aput-object v29, v19, v34

    .line 284
    :cond_1b
    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 294
    :cond_1c
    const/16 v34, 0x0

    const/16 v35, 0x2

    move-object/from16 v0, v29

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    const-string/jumbo v35, "ru"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_1d

    .line 295
    const/16 v34, 0x2

    aput-object v29, v19, v34

    goto :goto_7

    .line 300
    :cond_1d
    const/16 v34, 0x0

    const/16 v35, 0x2

    move-object/from16 v0, v29

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    const-string/jumbo v35, "uk"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_1e

    .line 301
    const/16 v34, 0x3

    aput-object v29, v19, v34

    goto :goto_7

    .line 306
    :cond_1e
    const/16 v34, 0x0

    const/16 v35, 0x2

    move-object/from16 v0, v29

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    const-string v35, "kk"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_1f

    .line 307
    const/16 v34, 0x4

    aput-object v29, v19, v34

    goto :goto_7

    .line 312
    :cond_1f
    const/16 v34, 0x0

    const/16 v35, 0x2

    move-object/from16 v0, v29

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    const-string/jumbo v35, "ro"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_20

    .line 313
    const/16 v34, 0x5

    aput-object v29, v19, v34

    goto :goto_7

    .line 318
    :cond_20
    const/16 v34, 0x0

    const/16 v35, 0x2

    move-object/from16 v0, v29

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    const-string v35, "ko"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_1b

    .line 319
    const/16 v34, 0x6

    aput-object v29, v19, v34

    goto/16 :goto_7

    .line 324
    .end local v11           #i:I
    .end local v21           #locales_tmp:[Ljava/lang/String;
    .end local v29           #s:Ljava/lang/String;
    :cond_21
    sget-object v34, Lcom/android/internal/app/LocalePicker;->sOperator:Ljava/lang/String;

    const-string v35, "LGU"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_22

    sget-object v34, Lcom/android/internal/app/LocalePicker;->sOperator:Ljava/lang/String;

    const-string v35, "SKT"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_22

    sget-object v34, Lcom/android/internal/app/LocalePicker;->sOperator:Ljava/lang/String;

    const-string v35, "KT"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_2d

    .line 328
    :cond_22
    invoke-static/range {v19 .. v19}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 329
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    .line 331
    .restart local v21       #locales_tmp:[Ljava/lang/String;
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_8
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    if-ge v11, v0, :cond_23

    .line 332
    aget-object v34, v19, v11

    aput-object v34, v21, v11

    .line 331
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 340
    :cond_23
    const/16 v34, 0x0

    const-string v35, ""

    aput-object v35, v19, v34

    const/4 v12, 0x0

    .line 341
    .local v12, j:I
    const/4 v11, 0x1

    :goto_9
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    if-ge v11, v0, :cond_2e

    .line 342
    aget-object v29, v21, v11

    .line 345
    .restart local v29       #s:Ljava/lang/String;
    const/16 v34, 0x0

    const/16 v35, 0x2

    move-object/from16 v0, v29

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    const-string v35, "ko"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_26

    .line 346
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v34

    const/16 v35, 0x2

    move/from16 v0, v34

    move/from16 v1, v35

    if-gt v0, v1, :cond_25

    .line 347
    add-int/lit8 v12, v12, 0x1

    const/16 v34, 0x1

    const/16 v35, 0x0

    const/16 v36, 0x2

    move-object/from16 v0, v29

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v35

    aput-object v35, v19, v34

    .line 341
    :cond_24
    :goto_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 351
    :cond_25
    add-int/lit8 v12, v12, 0x1

    const/16 v34, 0x2

    aput-object v29, v19, v34

    goto :goto_a

    .line 356
    :cond_26
    const/16 v34, 0x0

    const/16 v35, 0x2

    move-object/from16 v0, v29

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    const-string v35, "en"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_2b

    .line 357
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v34

    const/16 v35, 0x2

    move/from16 v0, v34

    move/from16 v1, v35

    if-gt v0, v1, :cond_27

    .line 358
    add-int/lit8 v12, v12, 0x1

    const/16 v34, 0x3

    const/16 v35, 0x0

    const/16 v36, 0x2

    move-object/from16 v0, v29

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v35

    aput-object v35, v19, v34

    goto :goto_a

    .line 362
    :cond_27
    const/16 v34, 0x3

    const/16 v35, 0x5

    move-object/from16 v0, v29

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    const-string v35, "AU"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_28

    .line 363
    add-int/lit8 v12, v12, 0x1

    const/16 v34, 0x4

    aput-object v29, v19, v34

    goto :goto_a

    .line 366
    :cond_28
    const/16 v34, 0x3

    const/16 v35, 0x5

    move-object/from16 v0, v29

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    const-string v35, "IE"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_29

    .line 367
    add-int/lit8 v12, v12, 0x1

    const/16 v34, 0x5

    aput-object v29, v19, v34

    goto :goto_a

    .line 370
    :cond_29
    const/16 v34, 0x3

    const/16 v35, 0x5

    move-object/from16 v0, v29

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    const-string v35, "GB"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_2a

    .line 371
    add-int/lit8 v12, v12, 0x1

    const/16 v34, 0x6

    aput-object v29, v19, v34

    goto/16 :goto_a

    .line 374
    :cond_2a
    const/16 v34, 0x3

    const/16 v35, 0x5

    move-object/from16 v0, v29

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    const-string v35, "US"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_24

    .line 375
    add-int/lit8 v12, v12, 0x1

    const/16 v34, 0x7

    aput-object v29, v19, v34

    goto/16 :goto_a

    .line 381
    :cond_2b
    const/16 v34, 0x0

    const/16 v35, 0x2

    move-object/from16 v0, v29

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    const-string/jumbo v35, "zh"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_2c

    .line 382
    add-int/lit8 v12, v12, 0x1

    const/16 v34, 0x8

    aput-object v29, v19, v34

    goto/16 :goto_a

    .line 387
    :cond_2c
    sub-int v34, v11, v12

    add-int/lit8 v33, v34, 0x8

    .line 388
    .local v33, x:I
    aput-object v29, v19, v33

    goto/16 :goto_a

    .line 393
    .end local v11           #i:I
    .end local v12           #j:I
    .end local v21           #locales_tmp:[Ljava/lang/String;
    .end local v29           #s:Ljava/lang/String;
    .end local v33           #x:I
    :cond_2d
    invoke-static/range {v19 .. v19}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 404
    :cond_2e
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v26, v0

    .line 405
    .local v26, origSize:I
    move/from16 v0, v26

    new-array v0, v0, [Lcom/android/internal/app/LocalePicker$LocaleInfo;

    move-object/from16 v27, v0

    .line 406
    .local v27, preprocess:[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    const/4 v9, 0x0

    .line 407
    .local v9, finalSize:I
    const/4 v11, 0x0

    .restart local v11       #i:I
    move v10, v9

    .end local v9           #finalSize:I
    .local v10, finalSize:I
    :goto_b
    move/from16 v0, v26

    if-ge v11, v0, :cond_37

    .line 408
    aget-object v29, v19, v11

    .line 409
    .restart local v29       #s:Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v16

    .line 410
    .local v16, len:I
    const/16 v34, 0x5

    move/from16 v0, v16

    move/from16 v1, v34

    if-ne v0, v1, :cond_36

    .line 411
    const/16 v34, 0x0

    const/16 v35, 0x2

    move-object/from16 v0, v29

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 412
    .local v14, language:Ljava/lang/String;
    const/16 v34, 0x3

    const/16 v35, 0x5

    move-object/from16 v0, v29

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 413
    .local v6, country:Ljava/lang/String;
    new-instance v13, Ljava/util/Locale;

    invoke-direct {v13, v14, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    .local v13, l:Ljava/util/Locale;
    if-nez v10, :cond_30

    .line 419
    add-int/lit8 v9, v10, 0x1

    .end local v10           #finalSize:I
    .restart local v9       #finalSize:I
    new-instance v34, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-virtual {v13, v13}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-direct {v0, v1, v13}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v34, v27, v10

    .line 407
    .end local v6           #country:Ljava/lang/String;
    .end local v13           #l:Ljava/util/Locale;
    .end local v14           #language:Ljava/lang/String;
    :cond_2f
    :goto_c
    add-int/lit8 v11, v11, 0x1

    move v10, v9

    .end local v9           #finalSize:I
    .restart local v10       #finalSize:I
    goto :goto_b

    .line 426
    .restart local v6       #country:Ljava/lang/String;
    .restart local v13       #l:Ljava/util/Locale;
    .restart local v14       #language:Ljava/lang/String;
    :cond_30
    add-int/lit8 v34, v10, -0x1

    aget-object v34, v27, v34

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_34

    .line 434
    add-int/lit8 v34, v10, -0x1

    aget-object v34, v27, v34

    add-int/lit8 v35, v10, -0x1

    aget-object v35, v27, v35

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Lcom/android/internal/app/LocalePicker;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/android/internal/app/LocalePicker$LocaleInfo;->label:Ljava/lang/String;

    .line 441
    add-int/lit8 v9, v10, 0x1

    .end local v10           #finalSize:I
    .restart local v9       #finalSize:I
    new-instance v34, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v13, v0, v1}, Lcom/android/internal/app/LocalePicker;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-direct {v0, v1, v13}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v34, v27, v10

    .line 459
    :goto_d
    sget-object v34, Lcom/android/internal/app/LocalePicker;->sOperator:Ljava/lang/String;

    const-string v35, "VDF"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_32

    sget-object v34, Lcom/android/internal/app/LocalePicker;->sOperator:Ljava/lang/String;

    const-string v35, "LGU"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_32

    sget-object v34, Lcom/android/internal/app/LocalePicker;->sOperator:Ljava/lang/String;

    const-string v35, "SKT"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_32

    sget-object v34, Lcom/android/internal/app/LocalePicker;->sOperator:Ljava/lang/String;

    const-string v35, "KT"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_32

    sget-object v34, Lcom/android/internal/app/LocalePicker;->sOperator:Ljava/lang/String;

    const-string v35, "OPEN"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_31

    sget-object v34, Lcom/android/internal/app/LocalePicker;->sCountry:Ljava/lang/String;

    const-string v35, "CIS"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_32

    :cond_31
    sget-object v34, Lcom/android/internal/app/LocalePicker;->sOperator:Ljava/lang/String;

    const-string v35, "OPEN"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_2f

    sget-object v34, Lcom/android/internal/app/LocalePicker;->sCountry:Ljava/lang/String;

    const-string v35, "EU"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_2f

    .line 469
    :cond_32
    const/4 v12, 0x0

    .restart local v12       #j:I
    :goto_e
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    if-ge v12, v0, :cond_2f

    .line 471
    aget-object v34, v22, v12

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v34

    if-nez v34, :cond_33

    .line 475
    add-int/lit8 v34, v9, -0x1

    aget-object v34, v27, v34

    aget-object v35, v23, v12

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/android/internal/app/LocalePicker$LocaleInfo;->label:Ljava/lang/String;

    .line 469
    :cond_33
    add-int/lit8 v12, v12, 0x1

    goto :goto_e

    .line 447
    .end local v9           #finalSize:I
    .end local v12           #j:I
    .restart local v10       #finalSize:I
    :cond_34
    const-string/jumbo v34, "zz_ZZ"

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_35

    .line 448
    const-string v8, "Pseudo..."

    .line 455
    .local v8, displayName:Ljava/lang/String;
    :goto_f
    add-int/lit8 v9, v10, 0x1

    .end local v10           #finalSize:I
    .restart local v9       #finalSize:I
    new-instance v34, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    move-object/from16 v0, v34

    invoke-direct {v0, v8, v13}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v34, v27, v10

    goto/16 :goto_d

    .line 450
    .end local v8           #displayName:Ljava/lang/String;
    .end local v9           #finalSize:I
    .restart local v10       #finalSize:I
    :cond_35
    invoke-virtual {v13, v13}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .restart local v8       #displayName:Ljava/lang/String;
    goto :goto_f

    .line 482
    .end local v6           #country:Ljava/lang/String;
    .end local v8           #displayName:Ljava/lang/String;
    .end local v13           #l:Ljava/util/Locale;
    .end local v14           #language:Ljava/lang/String;
    :cond_36
    const/16 v34, 0x2

    move/from16 v0, v16

    move/from16 v1, v34

    if-ne v0, v1, :cond_3b

    .line 483
    new-instance v13, Ljava/util/Locale;

    move-object/from16 v0, v29

    invoke-direct {v13, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 484
    .restart local v13       #l:Ljava/util/Locale;
    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_3b

    .line 485
    add-int/lit8 v9, v10, 0x1

    .end local v10           #finalSize:I
    .restart local v9       #finalSize:I
    new-instance v34, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-virtual {v13, v13}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-direct {v0, v1, v13}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v34, v27, v10

    goto/16 :goto_c

    .line 491
    .end local v9           #finalSize:I
    .end local v13           #l:Ljava/util/Locale;
    .end local v16           #len:I
    .end local v29           #s:Ljava/lang/String;
    .restart local v10       #finalSize:I
    :cond_37
    new-array v0, v10, [Lcom/android/internal/app/LocalePicker$LocaleInfo;

    move-object/from16 v17, v0

    .line 492
    .local v17, localeInfos:[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    const/4 v11, 0x0

    :goto_10
    if-ge v11, v10, :cond_38

    .line 493
    aget-object v34, v27, v11

    aput-object v34, v17, v11

    .line 492
    add-int/lit8 v11, v11, 0x1

    goto :goto_10

    .line 496
    :cond_38
    sget-object v34, Lcom/android/internal/app/LocalePicker;->sOperator:Ljava/lang/String;

    const-string v35, "VZW"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_3a

    sget-object v34, Lcom/android/internal/app/LocalePicker;->sOperator:Ljava/lang/String;

    const-string v35, "LGU"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_3a

    sget-object v34, Lcom/android/internal/app/LocalePicker;->sOperator:Ljava/lang/String;

    const-string v35, "SKT"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_3a

    sget-object v34, Lcom/android/internal/app/LocalePicker;->sOperator:Ljava/lang/String;

    const-string v35, "KT"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_3a

    sget-object v34, Lcom/android/internal/app/LocalePicker;->sOperator:Ljava/lang/String;

    const-string v35, "OPEN"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_39

    sget-object v34, Lcom/android/internal/app/LocalePicker;->sCountry:Ljava/lang/String;

    const-string v35, "CIS"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_3a

    .line 503
    :cond_39
    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 512
    :cond_3a
    new-instance v34, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-object v34

    .end local v17           #localeInfos:[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    .restart local v16       #len:I
    .restart local v29       #s:Ljava/lang/String;
    :cond_3b
    move v9, v10

    .end local v10           #finalSize:I
    .restart local v9       #finalSize:I
    goto/16 :goto_c
.end method

.method private static getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "l"
    .parameter "specialLocaleCodes"
    .parameter "specialLocaleNames"

    .prologue
    .line 525
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 527
    .local v0, code:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 528
    aget-object v2, p1, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 529
    aget-object v2, p2, v1

    .line 533
    :goto_1
    return-object v2

    .line 527
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 533
    :cond_1
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 516
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 520
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static updateLocale(Ljava/util/Locale;)V
    .locals 3
    .parameter "locale"

    .prologue
    .line 592
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 593
    .local v0, am:Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 595
    .local v1, config:Landroid/content/res/Configuration;
    iput-object p0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 598
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 600
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 602
    const-string v2, "com.android.providers.settings"

    invoke-static {v2}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 606
    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v1           #config:Landroid/content/res/Configuration;
    :goto_0
    return-void

    .line 603
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 538
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 539
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/LocalePicker;->constructAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 540
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    invoke-virtual {p0, v0}, Lcom/android/internal/app/LocalePicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 541
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 7
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v6, 0x3

    .line 561
    iget-object v4, p0, Lcom/android/internal/app/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    if-eqz v4, :cond_3

    .line 563
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-interface {v4, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    iget-object v1, v4, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    .line 564
    .local v1, locale:Ljava/util/Locale;
    sget-object v4, Lcom/android/internal/app/LocalePicker;->sOperator:Ljava/lang/String;

    const-string v5, "VIV"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/android/internal/app/LocalePicker;->sOperator:Ljava/lang/String;

    const-string v5, "TCL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "SCA"

    const-string/jumbo v5, "ro.build.target_region"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 565
    :cond_0
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "es"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 566
    const/4 v0, 0x0

    .line 567
    .local v0, countryCodeISO:Ljava/lang/String;
    const-string v4, "gsm.sim.operator.numeric"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 568
    .local v3, numeric:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_4

    .line 569
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 570
    .local v2, mcc:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v0

    .line 575
    .end local v2           #mcc:Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 576
    const-string v0, "ES"

    .line 578
    :cond_1
    new-instance v1, Ljava/util/Locale;

    .end local v1           #locale:Ljava/util/Locale;
    const-string v4, "es"

    invoke-direct {v1, v4, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    .end local v0           #countryCodeISO:Ljava/lang/String;
    .end local v3           #numeric:Ljava/lang/String;
    .restart local v1       #locale:Ljava/util/Locale;
    :cond_2
    iget-object v4, p0, Lcom/android/internal/app/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    invoke-interface {v4, v1}, Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;->onLocaleSelected(Ljava/util/Locale;)V

    .line 584
    .end local v1           #locale:Ljava/util/Locale;
    :cond_3
    return-void

    .line 573
    .restart local v0       #countryCodeISO:Ljava/lang/String;
    .restart local v1       #locale:Ljava/util/Locale;
    .restart local v3       #numeric:Ljava/lang/String;
    :cond_4
    const-string/jumbo v4, "ro.build.default_country"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 549
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 550
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 551
    return-void
.end method

.method public setLocaleSelectionListener(Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 544
    iput-object p1, p0, Lcom/android/internal/app/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    .line 545
    return-void
.end method
