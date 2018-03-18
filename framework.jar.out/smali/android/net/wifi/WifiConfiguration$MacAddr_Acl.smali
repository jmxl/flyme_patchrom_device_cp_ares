.class public Landroid/net/wifi/WifiConfiguration$MacAddr_Acl;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MacAddr_Acl"
.end annotation


# static fields
.field public static final ACL_ALLOW_AND_DENY_LIST:I = 0x2

.field public static final ACL_ALLOW_LIST:I = 0x1

.field public static final ACL_DENY_LIST:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
