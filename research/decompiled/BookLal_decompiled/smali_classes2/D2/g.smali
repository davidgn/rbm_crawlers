.class public final LD2/g;
.super LE2/a;
.source "SourceFile"


# instance fields
.field public final a:LE2/f;

.field public final b:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field public final synthetic c:LD2/h;


# direct methods
.method public constructor <init>(LD2/h;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 3

    new-instance v0, LE2/f;

    const-string v1, "OnRequestInstallCallback"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LE2/f;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, LD2/g;->c:LD2/h;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string p1, "com.google.android.play.core.inappreview.protocol.IInAppReviewServiceCallback"

    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    iput-object v0, p0, LD2/g;->a:LE2/f;

    iput-object p2, p0, LD2/g;->b:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method
