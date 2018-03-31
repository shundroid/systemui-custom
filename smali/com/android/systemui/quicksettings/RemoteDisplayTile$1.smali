.class Lcom/android/systemui/quicksettings/RemoteDisplayTile$1;
.super Landroid/media/MediaRouter$SimpleCallback;
.source "RemoteDisplayTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/quicksettings/RemoteDisplayTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/RemoteDisplayTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/RemoteDisplayTile;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/systemui/quicksettings/RemoteDisplayTile$1;->this$0:Lcom/android/systemui/quicksettings/RemoteDisplayTile;

    invoke-direct {p0}, Landroid/media/MediaRouter$SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRouteAdded(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/systemui/quicksettings/RemoteDisplayTile$1;->this$0:Lcom/android/systemui/quicksettings/RemoteDisplayTile;

    invoke-static {v0}, Lcom/android/systemui/quicksettings/RemoteDisplayTile;->access$000(Lcom/android/systemui/quicksettings/RemoteDisplayTile;)V

    .line 46
    return-void
.end method

.method public onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui/quicksettings/RemoteDisplayTile$1;->this$0:Lcom/android/systemui/quicksettings/RemoteDisplayTile;

    invoke-static {v0}, Lcom/android/systemui/quicksettings/RemoteDisplayTile;->access$000(Lcom/android/systemui/quicksettings/RemoteDisplayTile;)V

    .line 50
    return-void
.end method

.method public onRouteRemoved(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/systemui/quicksettings/RemoteDisplayTile$1;->this$0:Lcom/android/systemui/quicksettings/RemoteDisplayTile;

    invoke-static {v0}, Lcom/android/systemui/quicksettings/RemoteDisplayTile;->access$000(Lcom/android/systemui/quicksettings/RemoteDisplayTile;)V

    .line 54
    return-void
.end method

.method public onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "type"    # I
    .param p3, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/quicksettings/RemoteDisplayTile$1;->this$0:Lcom/android/systemui/quicksettings/RemoteDisplayTile;

    invoke-static {v0}, Lcom/android/systemui/quicksettings/RemoteDisplayTile;->access$000(Lcom/android/systemui/quicksettings/RemoteDisplayTile;)V

    .line 58
    return-void
.end method

.method public onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "type"    # I
    .param p3, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/systemui/quicksettings/RemoteDisplayTile$1;->this$0:Lcom/android/systemui/quicksettings/RemoteDisplayTile;

    invoke-static {v0}, Lcom/android/systemui/quicksettings/RemoteDisplayTile;->access$000(Lcom/android/systemui/quicksettings/RemoteDisplayTile;)V

    .line 62
    return-void
.end method
