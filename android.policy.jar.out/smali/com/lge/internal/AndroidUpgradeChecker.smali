.class public Lcom/lge/internal/AndroidUpgradeChecker;
.super Ljava/lang/Object;
.source "AndroidUpgradeChecker.java"


# static fields
.field private static final DEBUG:Z

.field private static final INSTANCE:Lcom/lge/internal/AndroidUpgradeChecker;

.field private static final TAG:Ljava/lang/String;

.field private static isAndroidUpgraded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/lge/internal/AndroidUpgradeChecker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/internal/AndroidUpgradeChecker;->TAG:Ljava/lang/String;

    .line 24
    new-instance v0, Lcom/lge/internal/AndroidUpgradeChecker;

    invoke-direct {v0}, Lcom/lge/internal/AndroidUpgradeChecker;-><init>()V

    sput-object v0, Lcom/lge/internal/AndroidUpgradeChecker;->INSTANCE:Lcom/lge/internal/AndroidUpgradeChecker;

    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/internal/AndroidUpgradeChecker;->isAndroidUpgraded:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Lcom/lge/internal/AndroidUpgradeChecker;->TAG:Ljava/lang/String;

    const-string v1, "AndroidUpgradeChecker initialized."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/internal/AndroidUpgradeChecker;->isAndroidUpgraded:Z

    .line 33
    return-void
.end method

.method public static getInstance()Lcom/lge/internal/AndroidUpgradeChecker;
    .locals 3

    .prologue
    .line 37
    sget-object v0, Lcom/lge/internal/AndroidUpgradeChecker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInstance(), INSTANCE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lge/internal/AndroidUpgradeChecker;->INSTANCE:Lcom/lge/internal/AndroidUpgradeChecker;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    sget-object v0, Lcom/lge/internal/AndroidUpgradeChecker;->INSTANCE:Lcom/lge/internal/AndroidUpgradeChecker;

    return-object v0
.end method


# virtual methods
.method public isAndroidUpgraded()Z
    .locals 3

    .prologue
    .line 55
    sget-object v0, Lcom/lge/internal/AndroidUpgradeChecker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAndroidUpgraded() return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/lge/internal/AndroidUpgradeChecker;->isAndroidUpgraded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    sget-boolean v0, Lcom/lge/internal/AndroidUpgradeChecker;->isAndroidUpgraded:Z

    return v0
.end method

.method public setAsAndroidUpgraded()Z
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lge/internal/AndroidUpgradeChecker;->isAndroidUpgraded:Z

    .line 44
    sget-object v0, Lcom/lge/internal/AndroidUpgradeChecker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAsAndroidUpgraded() return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/lge/internal/AndroidUpgradeChecker;->isAndroidUpgraded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    sget-boolean v0, Lcom/lge/internal/AndroidUpgradeChecker;->isAndroidUpgraded:Z

    return v0
.end method
