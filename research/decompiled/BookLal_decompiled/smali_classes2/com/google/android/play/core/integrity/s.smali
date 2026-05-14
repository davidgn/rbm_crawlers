.class final Lcom/google/android/play/core/integrity/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/play/core/integrity/s;

.field private final b:LG2/j;

.field private final c:LG2/j;

.field private final d:LG2/j;

.field private final e:LG2/j;

.field private final f:LG2/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/play/core/integrity/r;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/google/android/play/core/integrity/s;->a:Lcom/google/android/play/core/integrity/s;

    new-instance p2, LG2/i;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, LG2/i;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/google/android/play/core/integrity/s;->b:LG2/j;

    invoke-static {}, Lcom/google/android/play/core/integrity/ac;->a()Lcom/google/android/play/core/integrity/ad;

    move-result-object p1

    invoke-static {p1}, LG2/g;->b(LG2/h;)LG2/g;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/play/core/integrity/s;->c:LG2/j;

    invoke-static {}, Lcom/google/android/play/core/integrity/l;->a()Lcom/google/android/play/core/integrity/m;

    move-result-object v0

    new-instance v1, Lcom/google/android/play/core/integrity/au;

    invoke-direct {v1, p2, v0}, Lcom/google/android/play/core/integrity/au;-><init>(LG2/j;LG2/j;)V

    iput-object v1, p0, Lcom/google/android/play/core/integrity/s;->d:LG2/j;

    invoke-static {}, Lcom/google/android/play/core/integrity/l;->a()Lcom/google/android/play/core/integrity/m;

    move-result-object v0

    new-instance v2, Lcom/google/android/play/core/integrity/al;

    invoke-direct {v2, p2, p1, v1, v0}, Lcom/google/android/play/core/integrity/al;-><init>(LG2/j;LG2/j;LG2/j;LG2/j;)V

    invoke-static {v2}, LG2/g;->b(LG2/h;)LG2/g;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/play/core/integrity/s;->e:LG2/j;

    new-instance p2, Lcom/google/android/play/core/integrity/ab;

    invoke-direct {p2, p1}, Lcom/google/android/play/core/integrity/ab;-><init>(LG2/j;)V

    invoke-static {p2}, LG2/g;->b(LG2/h;)LG2/g;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/play/core/integrity/s;->f:LG2/j;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "instance cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()Lcom/google/android/play/core/integrity/IntegrityManager;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/integrity/s;->f:LG2/j;

    invoke-interface {v0}, LG2/j;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/integrity/IntegrityManager;

    return-object v0
.end method
