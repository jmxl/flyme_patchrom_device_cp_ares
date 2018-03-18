.class Landroid/widget/RemoteViews$SetOnClickPendingIntent$1;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$SetOnClickPendingIntent;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/RemoteViews$SetOnClickPendingIntent;

.field final synthetic val$handler:Landroid/widget/RemoteViews$OnClickHandler;

.field final synthetic val$root:Landroid/view/View;

.field final synthetic val$rootParent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews$SetOnClickPendingIntent;Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/RemoteViews$SetOnClickPendingIntent;
    .param p2, "val$root"    # Landroid/view/View;
    .param p3, "val$rootParent"    # Landroid/view/ViewGroup;
    .param p4, "val$handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 833
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnClickPendingIntent;

    iput-object p2, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntent$1;->val$root:Landroid/view/View;

    iput-object p3, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntent$1;->val$rootParent:Landroid/view/ViewGroup;

    iput-object p4, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntent$1;->val$handler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 837
    invoke-static {p1}, Landroid/widget/RemoteViews;->-wrap0(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 839
    .local v1, "rect":Landroid/graphics/Rect;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 840
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 846
    iget-object v2, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnClickPendingIntent;

    iget-object v2, v2, Landroid/widget/RemoteViews$SetOnClickPendingIntent;->this$0:Landroid/widget/RemoteViews;

    iget-object v3, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntent$1;->val$root:Landroid/view/View;

    iget-object v4, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntent$1;->val$rootParent:Landroid/view/ViewGroup;

    iget-object v5, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnClickPendingIntent;

    iget-object v5, v5, Landroid/widget/RemoteViews$SetOnClickPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    invoke-static {v2, v3, v4, v5, v0}, Landroid/widget/RemoteViews;->-wrap7(Landroid/widget/RemoteViews;Landroid/view/View;Landroid/view/ViewGroup;Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 850
    iget-object v2, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntent$1;->val$handler:Landroid/widget/RemoteViews$OnClickHandler;

    iget-object v3, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnClickPendingIntent;

    iget-object v3, v3, Landroid/widget/RemoteViews$SetOnClickPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, p1, v3, v0}, Landroid/widget/RemoteViews$OnClickHandler;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    .line 834
    return-void
.end method
