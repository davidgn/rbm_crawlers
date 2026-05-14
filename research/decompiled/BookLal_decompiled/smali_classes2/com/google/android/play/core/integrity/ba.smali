.class public final Lcom/google/android/play/core/integrity/ba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG2/h;


# instance fields
.field private final a:LG2/j;

.field private final b:LG2/j;


# direct methods
.method public constructor <init>(LG2/j;LG2/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/integrity/ba;->a:LG2/j;

    iput-object p2, p0, Lcom/google/android/play/core/integrity/ba;->b:LG2/j;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/play/core/integrity/ba;->b:LG2/j;

    iget-object v1, p0, Lcom/google/android/play/core/integrity/ba;->a:LG2/j;

    invoke-interface {v1}, LG2/j;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, LG2/j;->a()Ljava/lang/Object;

    move-result-object v0

    new-instance v2, Lcom/google/android/play/core/integrity/az;

    check-cast v1, Lcom/google/android/play/core/integrity/bn;

    check-cast v0, Lcom/google/android/play/core/integrity/bt;

    invoke-direct {v2, v1, v0}, Lcom/google/android/play/core/integrity/az;-><init>(Lcom/google/android/play/core/integrity/bn;Lcom/google/android/play/core/integrity/bt;)V

    return-object v2
.end method
