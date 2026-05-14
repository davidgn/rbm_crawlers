.class final Lcom/google/android/gms/internal/ads/zzhbu;
.super Lcom/google/android/gms/internal/ads/zzham;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/RunnableFuture;


# instance fields
.field private volatile zza:Lcom/google/android/gms/internal/ads/zzhbc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhac;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzham;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhbs;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzhbs;-><init>(Lcom/google/android/gms/internal/ads/zzhbu;Lcom/google/android/gms/internal/ads/zzhac;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhbu;->zza:Lcom/google/android/gms/internal/ads/zzhbc;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzham;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhbt;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzhbt;-><init>(Lcom/google/android/gms/internal/ads/zzhbu;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhbu;->zza:Lcom/google/android/gms/internal/ads/zzhbc;

    return-void
.end method

.method public static zze(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhbu;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhbu;

    invoke-static {p0, p1}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzhbu;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhbu;->zza:Lcom/google/android/gms/internal/ads/zzhbc;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhbc;->run()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhbu;->zza:Lcom/google/android/gms/internal/ads/zzhbc;

    return-void
.end method

.method public final zzc()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgzo;->zzj()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhbu;->zza:Lcom/google/android/gms/internal/ads/zzhbc;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhbc;->zzh()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhbu;->zza:Lcom/google/android/gms/internal/ads/zzhbc;

    return-void
.end method

.method public final zzd()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhbu;->zza:Lcom/google/android/gms/internal/ads/zzhbc;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhbc;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x7

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "task=["

    const-string v3, "]"

    invoke-static {v2, v1, v0, v3}, LC/a;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzgzo;->zzd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
