.class public Lcom/journeyui/zsusagestat/ZsUsagestatUtils;
.super Ljava/lang/Object;
.source "ZsUsagestatUtils.java"


# static fields
.field public static ACTION_FRAMEWORK_ACTIVITY_RESUME:Ljava/lang/String; = null

.field private static final EXTRA_ACTIVITY_NAME:Ljava/lang/String; = "activity_name"

.field private static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final PACKAGENAME_ZSAPPUSAGECOLLECTOR:Ljava/lang/String; = "com.journeyui.zsappusagecollector"

.field public static final ZSUSAGESTATUS_ENABLED:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    const-string/jumbo v0, "ro.journey.zsusagestat"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/journeyui/zsusagestat/ZsUsagestatUtils;->ZSUSAGESTATUS_ENABLED:Z

    .line 15
    const-string/jumbo v0, "journeyui.intent.action.ZSUSAGE_ACTIVITY_RESUMED"

    sput-object v0, Lcom/journeyui/zsusagestat/ZsUsagestatUtils;->ACTION_FRAMEWORK_ACTIVITY_RESUME:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendActivityResumedBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;

    .prologue
    .line 21
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/journeyui/zsusagestat/ZsUsagestatUtils;->ACTION_FRAMEWORK_ACTIVITY_RESUME:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 22
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "com.journeyui.zsappusagecollector"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    const-string/jumbo v1, "package_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    const-string/jumbo v1, "activity_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 20
    return-void
.end method
