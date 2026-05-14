.class final Lcom/google/android/gms/internal/ads/zzfgu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgsa;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfgx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfgx;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgu;->zza:Lcom/google/android/gms/internal/ads/zzfgx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcai;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfgv;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfme;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzcai;->zzj:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzfme;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzfgv;-><init>(Lcom/google/android/gms/internal/ads/zzcai;Lcom/google/android/gms/internal/ads/zzfmc;[B)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgu;->zza:Lcom/google/android/gms/internal/ads/zzfgx;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfgx;->zzd(Lcom/google/android/gms/internal/ads/zzfgv;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfgx;->zzc()Lcom/google/android/gms/internal/ads/zzfgv;

    move-result-object p1

    return-object p1
.end method
