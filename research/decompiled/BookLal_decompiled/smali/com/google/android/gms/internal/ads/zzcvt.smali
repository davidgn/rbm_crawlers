.class public final Lcom/google/android/gms/internal/ads/zzcvt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzilu;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzimd;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzimd;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzimd;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvt;->zza:Lcom/google/android/gms/internal/ads/zzimd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcvt;->zzb:Lcom/google/android/gms/internal/ads/zzimd;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcvt;->zzc:Lcom/google/android/gms/internal/ads/zzimd;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;)Lcom/google/android/gms/internal/ads/zzcvt;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcvt;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcvt;-><init>(Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzcvs;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvt;->zza:Lcom/google/android/gms/internal/ads/zzimd;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcvo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcvo;->zza()Lcom/google/android/gms/internal/ads/zzcjz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcvt;->zzb:Lcom/google/android/gms/internal/ads/zzimd;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzimj;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdyq;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcvt;->zzc:Lcom/google/android/gms/internal/ads/zzimd;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzcxp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcxp;->zza()Lcom/google/android/gms/internal/ads/zzfjk;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcvs;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcvs;-><init>(Lcom/google/android/gms/internal/ads/zzcjz;Lcom/google/android/gms/internal/ads/zzdyq;Lcom/google/android/gms/internal/ads/zzfjk;)V

    return-object v3
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcvt;->zza()Lcom/google/android/gms/internal/ads/zzcvs;

    move-result-object v0

    return-object v0
.end method
