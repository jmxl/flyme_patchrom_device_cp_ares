.class Lcom/android/internal/os/ZygoteInit$preloadClassesThread;
.super Ljava/lang/Thread;
.source "ZygoteInit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/ZygoteInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "preloadClassesThread"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x4000

    .line 243
    const-string/jumbo v0, "PreloadClasses"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 244
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->-wrap0()V

    .line 245
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 242
    return-void
.end method
