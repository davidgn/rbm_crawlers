.class public final Lcom/google/android/gms/internal/ads/zznc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzjm;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzmy;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzjm;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzjm;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzmy;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zznc;->zza:Lcom/google/android/gms/internal/ads/zzjm;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzaas;)Lcom/google/android/gms/internal/ads/zznc;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznc;->zza:Lcom/google/android/gms/internal/ads/zzjm;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzw:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgsj;->zzi(Z)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzjj;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzjj;-><init>(Lcom/google/android/gms/internal/ads/zzaas;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzjm;->zze:Lcom/google/android/gms/internal/ads/zzgtb;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzlr;)Lcom/google/android/gms/internal/ads/zznc;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznc;->zza:Lcom/google/android/gms/internal/ads/zzjm;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzw:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgsj;->zzi(Z)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzjk;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzjk;-><init>(Lcom/google/android/gms/internal/ads/zzlr;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzf:Lcom/google/android/gms/internal/ads/zzgtb;

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zznd;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznc;->zza:Lcom/google/android/gms/internal/ads/zzjm;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzw:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgsj;->zzi(Z)V

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzw:Z

    new-instance v1, Lcom/google/android/gms/internal/ads/zznd;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zznd;-><init>(Lcom/google/android/gms/internal/ads/zzjm;)V

    return-object v1
.end method
