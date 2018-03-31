.class Lcom/android/systemui/quicksettings/ExpandedDesktopTile$1;
.super Ljava/lang/Object;
.source "ExpandedDesktopTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/quicksettings/ExpandedDesktopTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/ExpandedDesktopTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/ExpandedDesktopTile;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/systemui/quicksettings/ExpandedDesktopTile$1;->this$0:Lcom/android/systemui/quicksettings/ExpandedDesktopTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/systemui/quicksettings/ExpandedDesktopTile$1;->this$0:Lcom/android/systemui/quicksettings/ExpandedDesktopTile;

    iget-object v0, v0, Lcom/android/systemui/quicksettings/ExpandedDesktopTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "expanded_desktop_state"

    iget-object v0, p0, Lcom/android/systemui/quicksettings/ExpandedDesktopTile$1;->this$0:Lcom/android/systemui/quicksettings/ExpandedDesktopTile;

    invoke-static {v0}, Lcom/android/systemui/quicksettings/ExpandedDesktopTile;->access$000(Lcom/android/systemui/quicksettings/ExpandedDesktopTile;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 44
    return-void

    .line 41
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
