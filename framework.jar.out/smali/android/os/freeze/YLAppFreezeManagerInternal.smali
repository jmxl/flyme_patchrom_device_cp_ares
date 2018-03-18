.class public abstract Landroid/os/freeze/YLAppFreezeManagerInternal;
.super Ljava/lang/Object;
.source "YLAppFreezeManagerInternal.java"


# static fields
.field public static final PROC_STATE_CHANGE_FOR_INTERNAL:I = 0x8

.field public static final REASON_BROADCAST_RECEIVER_EXECUTING:I = 0x2

.field public static final REASON_JOB_STARTED_UNFINISHED:I = 0x4

.field public static final REASON_SERVICE_EXECUTING:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract updateUidForFreezeChange(II)V
.end method
