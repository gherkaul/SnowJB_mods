.class public Landroid/os/Power;
.super Ljava/lang/Object;
.source "Power.java"


# static fields
.field public static BRIGHTNESS_DIM:I = 0x0

.field public static final BRIGHTNESS_OFF:I = 0x0

.field public static final BRIGHTNESS_ON:I = 0xff


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/16 v0, 0x14

    sput v0, Landroid/os/Power;->BRIGHTNESS_DIM:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method
