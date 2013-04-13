.class public abstract Landroid/os/Vibrator;
.super Ljava/lang/Object;
.source "Vibrator.java"


# static fields
.field public static final VIBRATE_DEFAULT_VOLUME:I = 0x5

.field public static final VIBRATE_MAX_VOLUME:I = 0x7

.field public static final VIBRATE_NONE_VOLUME:I = -0x1

.field public static final VIBRATE_NUM_TYPE:I = 0x3

.field public static final VIBRATE_TYPE_HAPTIC:I = 0x2

.field public static final VIBRATE_TYPE_NOTIFICATION:I = 0x1

.field public static final VIBRATE_TYPE_RING:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract getVibrateVolume()I
.end method

.method public abstract getVibrateVolume(I)I
.end method

.method public abstract hasVibrator()Z
.end method

.method public abstract setVibrateVolume(I)V
.end method

.method public abstract setVibrateVolume(II)V
.end method

.method public abstract vibrate(J)V
.end method

.method public abstract vibrate(JI)V
.end method

.method public abstract vibrate([JI)V
.end method

.method public abstract vibrate([JI[I)V
.end method
