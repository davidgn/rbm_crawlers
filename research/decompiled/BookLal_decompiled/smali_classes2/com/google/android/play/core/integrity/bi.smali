.class Lcom/google/android/play/core/integrity/bi;
.super LG2/q;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field final synthetic b:Lcom/google/android/play/core/integrity/bn;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/integrity/bn;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/integrity/bi;->b:Lcom/google/android/play/core/integrity/bn;

    const-string p1, "com.google.android.play.core.integrity.protocol.IExpressIntegrityServiceCallback"

    invoke-direct {p0, p1}, LG2/k;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/play/core/integrity/bi;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final b(Landroid/os/Bundle;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/play/core/integrity/bi;->b:Lcom/google/android/play/core/integrity/bn;

    iget-object p1, p1, Lcom/google/android/play/core/integrity/bn;->a:LG2/d;

    iget-object v0, p0, Lcom/google/android/play/core/integrity/bi;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1, v0}, LG2/d;->d(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/play/core/integrity/bi;->b:Lcom/google/android/play/core/integrity/bn;

    iget-object p1, p1, Lcom/google/android/play/core/integrity/bn;->a:LG2/d;

    iget-object v0, p0, Lcom/google/android/play/core/integrity/bi;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1, v0}, LG2/d;->d(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method

.method public final d(Landroid/os/Bundle;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/play/core/integrity/bi;->b:Lcom/google/android/play/core/integrity/bn;

    iget-object p1, p1, Lcom/google/android/play/core/integrity/bn;->a:LG2/d;

    iget-object v0, p0, Lcom/google/android/play/core/integrity/bi;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1, v0}, LG2/d;->d(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/play/core/integrity/bi;->b:Lcom/google/android/play/core/integrity/bn;

    iget-object p1, p1, Lcom/google/android/play/core/integrity/bn;->a:LG2/d;

    iget-object v0, p0, Lcom/google/android/play/core/integrity/bi;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1, v0}, LG2/d;->d(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
