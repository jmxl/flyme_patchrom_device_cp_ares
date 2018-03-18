.class Landroid/app/usage/UsageStatsManager$ListenerTransport;
.super Landroid/app/usage/IYulongAppStatusListener$Stub;
.source "UsageStatsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/UsageStatsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerTransport"
.end annotation


# instance fields
.field private mListener:Landroid/app/usage/YulongAppStatusListener;

.field final synthetic this$0:Landroid/app/usage/UsageStatsManager;


# direct methods
.method constructor <init>(Landroid/app/usage/UsageStatsManager;Landroid/app/usage/YulongAppStatusListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/usage/UsageStatsManager;
    .param p2, "listener"    # Landroid/app/usage/YulongAppStatusListener;

    .prologue
    .line 301
    iput-object p1, p0, Landroid/app/usage/UsageStatsManager$ListenerTransport;->this$0:Landroid/app/usage/UsageStatsManager;

    invoke-direct {p0}, Landroid/app/usage/IYulongAppStatusListener$Stub;-><init>()V

    .line 302
    iput-object p2, p0, Landroid/app/usage/UsageStatsManager$ListenerTransport;->mListener:Landroid/app/usage/YulongAppStatusListener;

    .line 301
    return-void
.end method


# virtual methods
.method public onAppStatusChange(Ljava/lang/String;II)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "eventType"    # I
    .param p3, "uid"    # I

    .prologue
    .line 307
    iget-object v0, p0, Landroid/app/usage/UsageStatsManager$ListenerTransport;->mListener:Landroid/app/usage/YulongAppStatusListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/usage/YulongAppStatusListener;->onAppStatusChange(Ljava/lang/String;II)V

    .line 306
    return-void
.end method
