.class public Landroid/provider/LgeDataProperties;
.super Ljava/lang/Object;
.source "LgeDataProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/LgeDataProperties$Features;
    }
.end annotation


# static fields
.field private static final PERSIST_PROPERTY_PREFIX:Ljava/lang/String; = "persist.lg.data."

.field private static final PROPERTY_PREFIX:Ljava/lang/String; = "lg.data."

.field private static final RO_PROPERTY_PREFIX:Ljava/lang/String; = "ro.lg.data."

.field private static mSelf:Landroid/provider/LgeDataProperties;


# instance fields
.field private final DBG:Z

.field private final TAG:Ljava/lang/String;

.field private mFeatures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/provider/LgeDataProperties$Features;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Landroid/provider/LgeDataProperties;->mSelf:Landroid/provider/LgeDataProperties;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 88
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "LgeDataProperties"

    iput-object v0, p0, Landroid/provider/LgeDataProperties;->TAG:Ljava/lang/String;

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/provider/LgeDataProperties;->DBG:Z

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-static {}, Landroid/provider/LgeDataProperties$Features;->values()[Landroid/provider/LgeDataProperties$Features;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v0, p0, Landroid/provider/LgeDataProperties;->mFeatures:Ljava/util/HashMap;

    .line 89
    invoke-direct {p0}, Landroid/provider/LgeDataProperties;->initialize()V

    .line 90
    return-void
.end method

.method public static getInstance()Landroid/provider/LgeDataProperties;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Landroid/provider/LgeDataProperties;->mSelf:Landroid/provider/LgeDataProperties;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Landroid/provider/LgeDataProperties;

    invoke-direct {v0}, Landroid/provider/LgeDataProperties;-><init>()V

    sput-object v0, Landroid/provider/LgeDataProperties;->mSelf:Landroid/provider/LgeDataProperties;

    .line 115
    :cond_0
    sget-object v0, Landroid/provider/LgeDataProperties;->mSelf:Landroid/provider/LgeDataProperties;

    return-object v0
.end method

.method private initialize()V
    .locals 7

    .prologue
    .line 94
    invoke-static {}, Landroid/provider/LgeDataProperties$Features;->values()[Landroid/provider/LgeDataProperties$Features;

    move-result-object v0

    .local v0, arr$:[Landroid/provider/LgeDataProperties$Features;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 96
    .local v1, f:Landroid/provider/LgeDataProperties$Features;
    invoke-virtual {v1}, Landroid/provider/LgeDataProperties$Features;->getPropertyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x1e

    if-le v5, v6, :cond_0

    .line 97
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initialize(), The property "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has too long name."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/provider/LgeDataProperties;->loge(Ljava/lang/String;)V

    .line 100
    :cond_0
    invoke-virtual {v1}, Landroid/provider/LgeDataProperties$Features;->getPropertyName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 101
    .local v4, value:Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    .line 102
    iget-object v5, p0, Landroid/provider/LgeDataProperties;->mFeatures:Ljava/util/HashMap;

    invoke-virtual {v5, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/provider/LgeDataProperties$Features;->getPropertyName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/provider/LgeDataProperties;->logv(Ljava/lang/String;)V

    .line 94
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 107
    .end local v1           #f:Landroid/provider/LgeDataProperties$Features;
    .end local v4           #value:Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LGE Data Feature object is initialized, # total features : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/provider/LgeDataProperties$Features;->values()[Landroid/provider/LgeDataProperties$Features;

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/provider/LgeDataProperties;->logi(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 242
    const-string v0, "LgeDataProperties"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 269
    const-string v0, "LgeDataProperties"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 249
    const-string v0, "LgeDataProperties"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 256
    const-string v0, "LgeDataProperties"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 263
    const-string v0, "LgeDataProperties"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-void
.end method


# virtual methods
.method public getBoolean(Landroid/provider/LgeDataProperties$Features;)Z
    .locals 1
    .parameter "f"

    .prologue
    .line 236
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/provider/LgeDataProperties;->getBoolean(Landroid/provider/LgeDataProperties$Features;Z)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Landroid/provider/LgeDataProperties$Features;Z)Z
    .locals 7
    .parameter "f"
    .parameter "def"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 195
    move v2, p2

    .line 196
    .local v2, ret:Z
    iget-object v6, p0, Landroid/provider/LgeDataProperties;->mFeatures:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 198
    .local v1, obj:Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 200
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBoolean(), "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " property is not defined."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/provider/LgeDataProperties;->logw(Ljava/lang/String;)V

    .line 229
    .end local v1           #obj:Ljava/lang/Object;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBoolean(), return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/provider/LgeDataProperties;->logd(Ljava/lang/String;)V

    .line 231
    return v2

    .line 202
    .restart local v1       #obj:Ljava/lang/Object;
    :cond_0
    instance-of v6, v1, Ljava/lang/Boolean;

    if-eqz v6, :cond_1

    .line 204
    check-cast v1, Ljava/lang/Boolean;

    .end local v1           #obj:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    .line 206
    .restart local v1       #obj:Ljava/lang/Object;
    :cond_1
    instance-of v6, v1, Ljava/lang/Integer;

    if-eqz v6, :cond_3

    .line 208
    check-cast v1, Ljava/lang/Integer;

    .end local v1           #obj:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_2

    move v2, v4

    :goto_1
    goto :goto_0

    :cond_2
    move v2, v5

    goto :goto_1

    .line 210
    .restart local v1       #obj:Ljava/lang/Object;
    :cond_3
    instance-of v6, v1, Ljava/lang/String;

    if-eqz v6, :cond_5

    move-object v3, v1

    .line 212
    check-cast v3, Ljava/lang/String;

    .line 216
    .local v3, str:Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_4

    move v2, v4

    :goto_2
    goto :goto_0

    :cond_4
    move v2, v5

    goto :goto_2

    .line 218
    :catch_0
    move-exception v0

    .line 220
    .local v0, nfe:Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBoolean(), "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not integer ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/provider/LgeDataProperties;->logw(Ljava/lang/String;)V

    .line 221
    const-string/jumbo v4, "true"

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 226
    .end local v0           #nfe:Ljava/lang/NumberFormatException;
    .end local v3           #str:Ljava/lang/String;
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBoolean(), "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cannot be converted to boolean type."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/provider/LgeDataProperties;->logw(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getInt(Landroid/provider/LgeDataProperties$Features;)I
    .locals 1
    .parameter "f"

    .prologue
    .line 190
    const/high16 v0, -0x8000

    invoke-virtual {p0, p1, v0}, Landroid/provider/LgeDataProperties;->getInt(Landroid/provider/LgeDataProperties$Features;I)I

    move-result v0

    return v0
.end method

.method public getInt(Landroid/provider/LgeDataProperties$Features;I)I
    .locals 6
    .parameter "f"
    .parameter "def"

    .prologue
    .line 154
    move v2, p2

    .line 155
    .local v2, ret:I
    iget-object v4, p0, Landroid/provider/LgeDataProperties;->mFeatures:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 157
    .local v1, obj:Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 159
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getInt(), "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " property is not defined."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/provider/LgeDataProperties;->logw(Ljava/lang/String;)V

    .line 183
    .end local v1           #obj:Ljava/lang/Object;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getInt(), return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/provider/LgeDataProperties;->logd(Ljava/lang/String;)V

    .line 185
    return v2

    .line 161
    .restart local v1       #obj:Ljava/lang/Object;
    :cond_0
    instance-of v4, v1, Ljava/lang/Integer;

    if-eqz v4, :cond_1

    .line 163
    check-cast v1, Ljava/lang/Integer;

    .end local v1           #obj:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 165
    .restart local v1       #obj:Ljava/lang/Object;
    :cond_1
    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_2

    move-object v3, v1

    .line 167
    check-cast v3, Ljava/lang/String;

    .line 171
    .local v3, str:Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    .line 175
    .local v0, nfe:Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getInt(), "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not integer ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/provider/LgeDataProperties;->logw(Ljava/lang/String;)V

    goto :goto_0

    .line 180
    .end local v0           #nfe:Ljava/lang/NumberFormatException;
    .end local v3           #str:Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getInt(), "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cannot be converted to integer type."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/provider/LgeDataProperties;->logw(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getString(Landroid/provider/LgeDataProperties$Features;)Ljava/lang/String;
    .locals 1
    .parameter "f"

    .prologue
    .line 149
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/provider/LgeDataProperties;->getString(Landroid/provider/LgeDataProperties$Features;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Landroid/provider/LgeDataProperties$Features;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "f"
    .parameter "def"

    .prologue
    .line 125
    move-object v1, p2

    .line 126
    .local v1, ret:Ljava/lang/String;
    iget-object v2, p0, Landroid/provider/LgeDataProperties;->mFeatures:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 128
    .local v0, obj:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getString(), "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " property is not defined."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/provider/LgeDataProperties;->logw(Ljava/lang/String;)V

    .line 142
    .end local v0           #obj:Ljava/lang/Object;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getString(), return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/provider/LgeDataProperties;->logd(Ljava/lang/String;)V

    .line 144
    return-object v1

    .line 132
    .restart local v0       #obj:Ljava/lang/Object;
    :cond_0
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 134
    check-cast v0, Ljava/lang/String;

    .end local v0           #obj:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 138
    .restart local v0       #obj:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getString(), "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cannot be converted to String type."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/provider/LgeDataProperties;->logw(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isSupported(Landroid/provider/LgeDataProperties$Features;)Z
    .locals 1
    .parameter "f"

    .prologue
    .line 120
    invoke-virtual {p0, p1}, Landroid/provider/LgeDataProperties;->getBoolean(Landroid/provider/LgeDataProperties$Features;)Z

    move-result v0

    return v0
.end method
