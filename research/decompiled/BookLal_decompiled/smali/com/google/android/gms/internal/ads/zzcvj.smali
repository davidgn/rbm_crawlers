.class public final Lcom/google/android/gms/internal/ads/zzcvj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzilu;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcux;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzimd;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcux;Lcom/google/android/gms/internal/ads/zzimd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvj;->zza:Lcom/google/android/gms/internal/ads/zzcux;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcvj;->zzb:Lcom/google/android/gms/internal/ads/zzimd;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzcux;Lcom/google/android/gms/internal/ads/zzimd;)Lcom/google/android/gms/internal/ads/zzcvj;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcvj;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzcvj;-><init>(Lcom/google/android/gms/internal/ads/zzcux;Lcom/google/android/gms/internal/ads/zzimd;)V

    return-object v0
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzcux;Lcom/google/android/gms/internal/ads/zzcwl;)Lcom/google/android/gms/internal/ads/zzdjv;
    .locals 1

    new-instance p0, Lcom/google/android/gms/internal/ads/zzdjv;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcew;->zzf:Lcom/google/android/gms/internal/ads/zzhbf;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdjv;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvj;->zzb:Lcom/google/android/gms/internal/ads/zzimd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzimj;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcwl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcvj;->zza:Lcom/google/android/gms/internal/ads/zzcux;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcvj;->zzc(Lcom/google/android/gms/internal/ads/zzcux;Lcom/google/android/gms/internal/ads/zzcwl;)Lcom/google/android/gms/internal/ads/zzdjv;

    move-result-object v0

    return-object v0
.end method
