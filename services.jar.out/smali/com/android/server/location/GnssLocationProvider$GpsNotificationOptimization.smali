.class public Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;
.super Ljava/lang/Object;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GnssLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GpsNotificationOptimization"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization$1;
    }
.end annotation


# static fields
.field private static final GPS_INTERVAL:J = 0x5265c00L

.field private static final GPS_NOTIFICATION_RETRY_TIMES_CAP:I = 0x2

.field private static final GPS_RETRY_INTERVAL_BASE:J = 0xea60L

.field private static final GPS_TIMER_EMPTY_MESSAGE:I = 0x65

.field private static final REMOVE_GPS_NOTIFICATION_TAG:Ljava/lang/String; = "remove_gps_notification_tag"

.field private static final TIMER_MAX_RUN_TIME:I = 0x5


# instance fields
.field private GPS_DELAY_FLAG:Z

.field private Gps_delay_End_Time:J

.field private Gps_delay_Start_Time:J

.field private isGpsNotificationTimerRun:Z

.field private isNotificationSent:Z

.field private mContext:Landroid/content/Context;

.field private mGpsNotificationRetryTimes:I

.field private mGpsNotificationTimer:Ljava/util/Timer;

.field final mGpsNotificationhandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider;

.field private timer_run_times:I


# direct methods
.method static synthetic -get0(Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;)I
    .locals 1

    iget v0, p0, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->mGpsNotificationRetryTimes:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;)I
    .locals 1

    iget v0, p0, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->timer_run_times:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->isNotificationSent:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->mGpsNotificationRetryTimes:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->timer_run_times:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->sendGpsNotification()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->stopmTimer()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Context;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p2, "mCt"    # Landroid/content/Context;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 2833
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2825
    iput v0, p0, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->timer_run_times:I

    .line 2826
    iput v0, p0, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->mGpsNotificationRetryTimes:I

    .line 2827
    iput-wide v2, p0, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->Gps_delay_Start_Time:J

    .line 2828
    iput-wide v2, p0, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->Gps_delay_End_Time:J

    .line 2829
    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->isGpsNotificationTimerRun:Z

    .line 2830
    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->GPS_DELAY_FLAG:Z

    .line 2831
    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->isNotificationSent:Z

    .line 2868
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization$1;-><init>(Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;)V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->mGpsNotificationhandler:Landroid/os/Handler;

    .line 2835
    iput-object p2, p0, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->mContext:Landroid/content/Context;

    .line 2833
    return-void
.end method

.method private removeGpsNotification()V
    .locals 3

    .prologue
    .line 2915
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->mContext:Landroid/content/Context;

    .line 2916
    const-string/jumbo v2, "notification"

    .line 2915
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 2917
    .local v0, "mNotificationManager":Landroid/app/NotificationManager;
    const-string/jumbo v1, "remove_gps_notification_tag"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 2914
    return-void
.end method

.method private resetGpsNotificationDelayParm()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2864
    iput v0, p0, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->mGpsNotificationRetryTimes:I

    .line 2865
    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->GPS_DELAY_FLAG:Z

    .line 2863
    return-void
.end method

.method private resetGpsNotificationTimerParm()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2860
    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->isGpsNotificationTimerRun:Z

    .line 2861
    iput v0, p0, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->timer_run_times:I

    .line 2859
    return-void
.end method

.method private sendGpsNotification()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 2892
    iget-object v8, p0, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 2893
    .local v7, "res":Landroid/content/res/Resources;
    const v8, 0x1040625

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2894
    .local v2, "gpsNotificationTitle":Ljava/lang/String;
    const v8, 0x1040626

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2895
    .local v1, "gpsNotificationText":Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    .line 2896
    const-string/jumbo v8, "android.settings.LOCATION_SOURCE_SETTINGS"

    .line 2895
    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2897
    .local v6, "notificationIntent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->mContext:Landroid/content/Context;

    .line 2898
    const/4 v9, 0x0

    .line 2899
    const/high16 v10, 0x10000000

    .line 2897
    invoke-static {v8, v9, v6, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 2900
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    iget-object v8, p0, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->mContext:Landroid/content/Context;

    .line 2901
    const-string/jumbo v9, "notification"

    .line 2900
    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 2902
    .local v4, "mNotificationManager":Landroid/app/NotificationManager;
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v8, p0, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->mContext:Landroid/content/Context;

    invoke-direct {v3, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 2903
    .local v3, "mBuilder":Landroid/app/Notification$Builder;
    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 2904
    const v9, 0x108072a

    .line 2903
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 2905
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 2903
    invoke-virtual {v8, v10, v11}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 2909
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v5

    .line 2910
    .local v5, "notification":Landroid/app/Notification;
    iput v12, v5, Landroid/app/Notification;->defaults:I

    .line 2911
    const-string/jumbo v8, "remove_gps_notification_tag"

    invoke-virtual {v4, v8, v12, v5}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 2891
    return-void
.end method

.method private startmTimer()V
    .locals 6

    .prologue
    .line 2839
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->isGpsNotificationTimerRun:Z

    .line 2840
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->mGpsNotificationTimer:Ljava/util/Timer;

    .line 2841
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->mGpsNotificationTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization$2;

    invoke-direct {v1, p0}, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization$2;-><init>(Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;)V

    .line 2850
    const-wide/16 v2, 0x0

    const-wide/32 v4, 0xea60

    .line 2841
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 2838
    return-void
.end method

.method private stopmTimer()V
    .locals 1

    .prologue
    .line 2854
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->mGpsNotificationTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 2855
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->mGpsNotificationTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 2856
    :cond_0
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->resetGpsNotificationTimerParm()V

    .line 2853
    return-void
.end method


# virtual methods
.method public isNotificationOptRunning()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 2921
    const-string/jumbo v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the timer status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->isGpsNotificationTimerRun:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2922
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->isGpsNotificationTimerRun:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public startGpsNotificationSession()V
    .locals 10

    .prologue
    const-wide/32 v8, 0x5265c00

    const/4 v6, 0x0

    .line 2926
    const-wide/16 v0, 0x0

    .line 2927
    .local v0, "Gps_interval_Time":J
    const-string/jumbo v2, "GnssLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "GPS_DELAY_FLAG: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->GPS_DELAY_FLAG:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2928
    iget-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->GPS_DELAY_FLAG:Z

    if-nez v2, :cond_1

    .line 2929
    iget v2, p0, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->mGpsNotificationRetryTimes:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    .line 2930
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->startmTimer()V

    .line 2925
    :goto_0
    return-void

    .line 2932
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->GPS_DELAY_FLAG:Z

    .line 2933
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->Gps_delay_Start_Time:J

    .line 2934
    const-string/jumbo v2, "GnssLocationProvider"

    const-string/jumbo v3, "gps notification has send 2times so no more resend in the next 86400 s."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2940
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->Gps_delay_End_Time:J

    .line 2941
    iget-wide v2, p0, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->Gps_delay_End_Time:J

    iget-wide v4, p0, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->Gps_delay_Start_Time:J

    sub-long v0, v2, v4

    .line 2942
    cmp-long v2, v0, v8

    if-ltz v2, :cond_2

    .line 2943
    iput v6, p0, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->mGpsNotificationRetryTimes:I

    .line 2944
    iput-boolean v6, p0, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->GPS_DELAY_FLAG:Z

    .line 2945
    const-string/jumbo v2, "GnssLocationProvider"

    const-string/jumbo v3, "Now mGpsNotificationRetryTimes has been clear !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2947
    :cond_2
    const-string/jumbo v2, "GnssLocationProvider"

    .line 2948
    const-string/jumbo v3, "no more sendGpsNotification() until clear the mGpsNotificationRetryTimes"

    .line 2947
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2949
    const-string/jumbo v2, "GnssLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "waiting for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2950
    sub-long v4, v8, v0

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 2949
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2950
    const-string/jumbo v4, " s."

    .line 2949
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopGpsNotificationSession(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "force"    # Ljava/lang/Boolean;

    .prologue
    .line 2955
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->isGpsNotificationTimerRun:Z

    if-eqz v0, :cond_0

    .line 2956
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->stopmTimer()V

    .line 2958
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->isNotificationSent:Z

    if-eqz v0, :cond_1

    .line 2959
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->removeGpsNotification()V

    .line 2960
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->isNotificationSent:Z

    .line 2963
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2964
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->resetGpsNotificationDelayParm()V

    .line 2954
    :cond_2
    return-void
.end method
