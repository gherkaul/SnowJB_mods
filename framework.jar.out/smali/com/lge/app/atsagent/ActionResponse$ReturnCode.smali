.class public Lcom/lge/app/atsagent/ActionResponse$ReturnCode;
.super Ljava/lang/Object;
.source "ActionResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/app/atsagent/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReturnCode"
.end annotation


# static fields
.field public static final DELIVERY_FAILURE:I = 0x2

.field public static final INVALID_PARAMETER:I = 0x4

.field public static final NOT_IMPLEMENTED:I = 0x3

.field public static final SUCCESS:I = 0x0

.field public static final TARGET_NOT_FOUND:I = 0x1

.field public static final UNCLASSIFIED_ERROR:I = 0x64


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
