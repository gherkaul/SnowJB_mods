.class public Lcom/lge/app/atsagent/UiElement$Field;
.super Ljava/lang/Object;
.source "UiElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/app/atsagent/UiElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Field"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/app/atsagent/UiElement$Field;->type:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/app/atsagent/UiElement$Field;->name:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/app/atsagent/UiElement$Field;->value:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "type"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/app/atsagent/UiElement$Field;->type:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/app/atsagent/UiElement$Field;->name:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/app/atsagent/UiElement$Field;->value:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/lge/app/atsagent/UiElement$Field;->type:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/lge/app/atsagent/UiElement$Field;->name:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/lge/app/atsagent/UiElement$Field;->value:Ljava/lang/String;

    .line 20
    return-void
.end method
