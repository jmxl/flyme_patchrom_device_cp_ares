.class public Lcom/journeyui/smartpolicy/SmartPolicyUtils;
.super Ljava/lang/Object;
.source "SmartPolicyUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/journeyui/smartpolicy/SmartPolicyUtils$BacklightPolicyColums;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.journeyui.smartpolicy"

.field static final CONTENT_BACKLIGHT_URI:Landroid/net/Uri;

.field private static final CONTENT_MODE_URI:Landroid/net/Uri;

.field private static final CONTENT_POLICY_URI:Landroid/net/Uri;

.field public static final SMART_POLICY_ENABLED:Z

.field private static final TABLE_BACKLIGHT_NAME:Ljava/lang/String; = "Backlight"

.field private static final TABLE_MODE_NAME:Ljava/lang/String; = "ModeTable"

.field private static final TABLE_POLICY_NAME:Ljava/lang/String; = "PolicyTable"

.field private static final TARGET_PACKAGE_NAME:Ljava/lang/String; = "com.journeyui.smartpolicy"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    const-string/jumbo v0, "ro.zeusis.smartpolicy"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/journeyui/smartpolicy/SmartPolicyUtils;->SMART_POLICY_ENABLED:Z

    .line 34
    const-string/jumbo v0, "content://com.journeyui.smartpolicy/ModeTable"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/journeyui/smartpolicy/SmartPolicyUtils;->CONTENT_MODE_URI:Landroid/net/Uri;

    .line 36
    const-string/jumbo v0, "content://com.journeyui.smartpolicy/PolicyTable"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/journeyui/smartpolicy/SmartPolicyUtils;->CONTENT_POLICY_URI:Landroid/net/Uri;

    .line 38
    const-string/jumbo v0, "content://com.journeyui.smartpolicy/Backlight"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/journeyui/smartpolicy/SmartPolicyUtils;->CONTENT_BACKLIGHT_URI:Landroid/net/Uri;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
