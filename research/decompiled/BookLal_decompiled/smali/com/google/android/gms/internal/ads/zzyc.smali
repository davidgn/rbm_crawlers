.class public final Lcom/google/android/gms/internal/ads/zzyc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzws;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhh;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzxl;

.field private zzc:I

.field private final zzd:Lcom/google/android/gms/internal/ads/zzabf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhh;Lcom/google/android/gms/internal/ads/zzafl;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzyb;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzyb;-><init>(Lcom/google/android/gms/internal/ads/zzafl;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzabf;

    const/4 v1, -0x1

    invoke-direct {p2, v1}, Lcom/google/android/gms/internal/ads/zzabf;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzyc;->zza:Lcom/google/android/gms/internal/ads/zzhh;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzyc;->zzb:Lcom/google/android/gms/internal/ads/zzxl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzyc;->zzd:Lcom/google/android/gms/internal/ads/zzabf;

    const/high16 p1, 0x100000

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzyc;->zzc:I

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/ads/zzyc;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzyc;->zzc:I

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzak;)Lcom/google/android/gms/internal/ads/zzyd;
    .locals 13

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzak;->zzb:Lcom/google/android/gms/internal/ads/zzag;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzyc;->zza:Lcom/google/android/gms/internal/ads/zzhh;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzyc;->zzb:Lcom/google/android/gms/internal/ads/zzxl;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzyd;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzyc;->zzd:Lcom/google/android/gms/internal/ads/zzabf;

    sget-object v5, Lcom/google/android/gms/internal/ads/zztw;->zza:Lcom/google/android/gms/internal/ads/zztw;

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzyc;->zzc:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v12}, Lcom/google/android/gms/internal/ads/zzyd;-><init>(Lcom/google/android/gms/internal/ads/zzak;Lcom/google/android/gms/internal/ads/zzhh;Lcom/google/android/gms/internal/ads/zzxl;Lcom/google/android/gms/internal/ads/zztw;Lcom/google/android/gms/internal/ads/zzabf;IZILcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzgtb;[B)V

    return-object v0
.end method
