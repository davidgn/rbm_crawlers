.class final Lcom/google/android/gms/internal/ads/zzgcj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzimd;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzgcl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgcl;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgcj;->zza:Lcom/google/android/gms/internal/ads/zzgcl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgcj;->zza:Lcom/google/android/gms/internal/ads/zzgcl;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgcn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgcl;->zza()Lcom/google/android/gms/internal/ads/zzgcl;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzgcn;-><init>(Lcom/google/android/gms/internal/ads/zzgcl;[B)V

    return-object v1
.end method
