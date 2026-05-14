.class public abstract Lcom/google/android/gms/internal/ads/zzgib;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgia;


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzggx;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzaww;

.field private final zze:Lcom/google/android/gms/internal/ads/zzgpf;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaww;Lcom/google/android/gms/internal/ads/zzggx;Lcom/google/android/gms/internal/ads/zzgpf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgib;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgib;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgib;->zzd:Lcom/google/android/gms/internal/ads/zzaww;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzgib;->zzc:Lcom/google/android/gms/internal/ads/zzggx;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzgib;->zze:Lcom/google/android/gms/internal/ads/zzgpf;

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgib;->zze:Lcom/google/android/gms/internal/ads/zzgpf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgpf;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgib;->zzc:Lcom/google/android/gms/internal/ads/zzggx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgib;->zza:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgib;->zzb:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzggx;->zzc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgib;->zzd:Lcom/google/android/gms/internal/ads/zzaww;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzgib;->zza(Ljava/lang/reflect/Method;Lcom/google/android/gms/internal/ads/zzaww;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgib;->zze:Lcom/google/android/gms/internal/ads/zzgpf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgpf;->zzc()V

    const/4 v0, 0x0

    return-object v0

    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgib;->zze:Lcom/google/android/gms/internal/ads/zzgpf;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzgpf;->zzb(Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgib;->zze:Lcom/google/android/gms/internal/ads/zzgpf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgpf;->zzc()V

    throw v0
.end method

.method public abstract zza(Ljava/lang/reflect/Method;Lcom/google/android/gms/internal/ads/zzaww;)V
.end method
