.class Lcom/android/systemui/statusbar/policy/Clock$3;
.super Landroid/content/BroadcastReceiver;
.source "Clock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/Clock;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/Clock;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/Clock$3;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 140
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 142
    const-string v2, "time-zone"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, tz:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/Clock$3;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v3

    #setter for: Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/policy/Clock;->access$002(Lcom/android/systemui/statusbar/policy/Clock;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 144
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/Clock$3;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    #getter for: Lcom/android/systemui/statusbar/policy/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/Clock;->access$100(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 145
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/Clock$3;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    #getter for: Lcom/android/systemui/statusbar/policy/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/Clock;->access$100(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/Clock$3;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    #getter for: Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/Clock;->access$000(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 153
    .end local v1           #tz:Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 154
    invoke-static {}, Lcom/android/systemui/statusbar/policy/Clock;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Intent.ACTION_TIME_TICK skipped"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :goto_1
    return-void

    .line 148
    :cond_1
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/Clock$3;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    const-string v3, ""

    #setter for: Lcom/android/systemui/statusbar/policy/Clock;->mClockFormatString:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/policy/Clock;->access$202(Lcom/android/systemui/statusbar/policy/Clock;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 158
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/Clock$3;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/Clock;->updateClock()V

    goto :goto_1
.end method
