.class Lcom/android/systemui/quicksettings/ProfileTile$1;
.super Ljava/lang/Object;
.source "ProfileTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/quicksettings/ProfileTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/ProfileTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/ProfileTile;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/systemui/quicksettings/ProfileTile$1;->this$0:Lcom/android/systemui/quicksettings/ProfileTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/quicksettings/ProfileTile$1;->this$0:Lcom/android/systemui/quicksettings/ProfileTile;

    invoke-static {v0}, Lcom/android/systemui/quicksettings/ProfileTile;->access$000(Lcom/android/systemui/quicksettings/ProfileTile;)V

    .line 49
    return-void
.end method
