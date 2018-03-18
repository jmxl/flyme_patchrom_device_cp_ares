.class public Landroid/net/wifi/WifiConfiguration$MacAddr_Acl_Oper;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MacAddr_Acl_Oper"
.end annotation


# static fields
.field public static final ADD_TO_ALLOW_LIST:I = 0x0

.field public static final ADD_TO_DENY_LIST:I = 0x2

.field public static final RMV_FRM_ALLOW_LIST:I = 0x1

.field public static final RMV_FRM_DENY_LIST:I = 0x3


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
