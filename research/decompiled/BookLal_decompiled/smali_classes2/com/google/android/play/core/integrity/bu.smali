.class public final Lcom/google/android/play/core/integrity/bu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG2/h;


# instance fields
.field private final a:LG2/j;


# direct methods
.method public constructor <init>(LG2/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/integrity/bu;->a:LG2/j;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/integrity/bu;->a:LG2/j;

    invoke-interface {v0}, LG2/j;->a()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/google/android/play/core/integrity/bt;

    check-cast v0, Lcom/google/android/play/core/integrity/bn;

    invoke-direct {v1, v0}, Lcom/google/android/play/core/integrity/bt;-><init>(Lcom/google/android/play/core/integrity/bn;)V

    return-object v1
.end method
