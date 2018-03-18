.class Lcom/android/server/LocationManagerService$1;
.super Ljava/util/ArrayList;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/LocationManagerService;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v0, "com.example.zhangshuibao.gpsviewtool"

    invoke-virtual {p0, v0}, Lcom/android/server/LocationManagerService$1;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "com.android.dialer"

    invoke-virtual {p0, v0}, Lcom/android/server/LocationManagerService$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
