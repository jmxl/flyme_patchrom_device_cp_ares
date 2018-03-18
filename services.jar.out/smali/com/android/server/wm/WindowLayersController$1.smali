.class Lcom/android/server/wm/WindowLayersController$1;
.super Ljava/lang/Object;
.source "WindowLayersController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowLayersController;->adjustSpecialWindows()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowLayersController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowLayersController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/WindowLayersController;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/server/wm/WindowLayersController$1;->this$0:Lcom/android/server/wm/WindowLayersController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 2
    .param p1, "now"    # Ljava/lang/Integer;
    .param p2, "next"    # Ljava/lang/Integer;

    .prologue
    .line 244
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "now"    # Ljava/lang/Object;
    .param p2, "next"    # Ljava/lang/Object;

    .prologue
    .line 242
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "now":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "next":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowLayersController$1;->compare(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method
