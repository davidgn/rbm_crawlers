.class final synthetic Lcom/google/android/gms/internal/ads/zzehd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzehn;

.field private final synthetic zzb:LN2/o;

.field private final synthetic zzc:LN2/o;

.field private final synthetic zzd:Lcom/google/android/gms/internal/ads/zzcai;

.field private final synthetic zze:Lcom/google/android/gms/internal/ads/zzfoz;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzehn;LN2/o;LN2/o;Lcom/google/android/gms/internal/ads/zzcai;Lcom/google/android/gms/internal/ads/zzfoz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzehd;->zza:Lcom/google/android/gms/internal/ads/zzehn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzehd;->zzb:LN2/o;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzehd;->zzc:LN2/o;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzehd;->zzd:Lcom/google/android/gms/internal/ads/zzcai;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzehd;->zze:Lcom/google/android/gms/internal/ads/zzfoz;

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehd;->zza:Lcom/google/android/gms/internal/ads/zzehn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzehd;->zzb:LN2/o;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzehd;->zzc:LN2/o;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzehd;->zzd:Lcom/google/android/gms/internal/ads/zzcai;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzehd;->zze:Lcom/google/android/gms/internal/ads/zzfoz;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzehn;->zzl(LN2/o;LN2/o;Lcom/google/android/gms/internal/ads/zzcai;Lcom/google/android/gms/internal/ads/zzfoz;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
