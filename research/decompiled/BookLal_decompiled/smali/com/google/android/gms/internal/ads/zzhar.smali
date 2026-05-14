.class public abstract Lcom/google/android/gms/internal/ads/zzhar;
.super Lcom/google/android/gms/internal/ads/zzhap;
.source "SourceFile"

# interfaces
.implements LN2/o;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhap;-><init>()V

    return-void
.end method


# virtual methods
.method public final addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhar;->zzc()LN2/o;

    move-result-object v0

    invoke-interface {v0, p1, p2}, LN2/o;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public bridge synthetic zza()Ljava/util/concurrent/Future;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public abstract zzc()LN2/o;
.end method
