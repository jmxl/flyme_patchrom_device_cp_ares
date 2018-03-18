.class final Lcom/journeyui/smartpolicy/SmartPolicyUtils$BacklightPolicyColums;
.super Ljava/lang/Object;
.source "SmartPolicyUtils.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/journeyui/smartpolicy/SmartPolicyUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BacklightPolicyColums"
.end annotation


# static fields
.field public static final MODE:Ljava/lang/String; = "mode"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final PACKAGE:Ljava/lang/String; = "package"

.field public static final POLICY_AUTO:Ljava/lang/String; = "policy_auto"

.field public static final POLICY_RATIO:Ljava/lang/String; = "policy_ratio"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
