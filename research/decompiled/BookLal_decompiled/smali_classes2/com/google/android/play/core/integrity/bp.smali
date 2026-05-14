.class public final Lcom/google/android/play/core/integrity/bp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG2/h;


# instance fields
.field private final a:LG2/j;

.field private final b:LG2/j;

.field private final c:LG2/j;

.field private final d:LG2/j;


# direct methods
.method public constructor <init>(LG2/j;LG2/j;LG2/j;LG2/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/integrity/bp;->a:LG2/j;

    iput-object p2, p0, Lcom/google/android/play/core/integrity/bp;->b:LG2/j;

    iput-object p3, p0, Lcom/google/android/play/core/integrity/bp;->c:LG2/j;

    iput-object p4, p0, Lcom/google/android/play/core/integrity/bp;->d:LG2/j;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/google/android/play/core/integrity/bp;->a:LG2/j;

    invoke-interface {v0}, LG2/j;->a()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/integrity/bp;->b:LG2/j;

    invoke-interface {v1}, LG2/j;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LG2/z;

    iget-object v2, p0, Lcom/google/android/play/core/integrity/bp;->c:LG2/j;

    check-cast v2, Lcom/google/android/play/core/integrity/au;

    invoke-virtual {v2}, Lcom/google/android/play/core/integrity/au;->b()Lcom/google/android/play/core/integrity/at;

    move-result-object v2

    new-instance v3, Lcom/google/android/play/core/integrity/j;

    invoke-direct {v3}, Lcom/google/android/play/core/integrity/j;-><init>()V

    new-instance v4, Lcom/google/android/play/core/integrity/bn;

    check-cast v0, Landroid/content/Context;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/play/core/integrity/bn;-><init>(Landroid/content/Context;LG2/z;Lcom/google/android/play/core/integrity/at;Lcom/google/android/play/core/integrity/k;)V

    return-object v4
.end method
