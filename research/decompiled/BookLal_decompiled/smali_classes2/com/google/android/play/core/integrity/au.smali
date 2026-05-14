.class public final Lcom/google/android/play/core/integrity/au;
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

    iput-object p1, p0, Lcom/google/android/play/core/integrity/au;->a:LG2/j;

    iput-object p2, p0, Lcom/google/android/play/core/integrity/au;->b:LG2/j;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/play/core/integrity/au;->b()Lcom/google/android/play/core/integrity/at;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/google/android/play/core/integrity/at;
    .locals 3

    new-instance v0, Lcom/google/android/play/core/integrity/at;

    iget-object v1, p0, Lcom/google/android/play/core/integrity/au;->a:LG2/j;

    iget-object v2, p0, Lcom/google/android/play/core/integrity/au;->b:LG2/j;

    invoke-direct {v0, v1, v2}, Lcom/google/android/play/core/integrity/at;-><init>(LG2/j;LG2/j;)V

    return-object v0
.end method
