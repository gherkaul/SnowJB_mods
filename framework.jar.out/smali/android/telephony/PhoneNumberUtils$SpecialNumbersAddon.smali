.class Landroid/telephony/PhoneNumberUtils$SpecialNumbersAddon;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/PhoneNumberUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpecialNumbersAddon"
.end annotation


# instance fields
.field public number:Ljava/lang/String;

.field public resString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "number"
    .parameter "resString"

    .prologue
    .line 3799
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3800
    iput-object p1, p0, Landroid/telephony/PhoneNumberUtils$SpecialNumbersAddon;->number:Ljava/lang/String;

    .line 3801
    iput-object p2, p0, Landroid/telephony/PhoneNumberUtils$SpecialNumbersAddon;->resString:Ljava/lang/String;

    .line 3802
    return-void
.end method
