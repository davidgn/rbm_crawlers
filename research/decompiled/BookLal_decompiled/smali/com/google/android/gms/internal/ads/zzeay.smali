.class final synthetic Lcom/google/android/gms/internal/ads/zzeay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzebb;

.field private final synthetic zzb:Ljava/lang/String;

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzbqy;

.field private final synthetic zzd:Lcom/google/android/gms/internal/ads/zzflb;

.field private final synthetic zze:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzebb;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbqy;Lcom/google/android/gms/internal/ads/zzflb;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeay;->zza:Lcom/google/android/gms/internal/ads/zzebb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeay;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeay;->zzc:Lcom/google/android/gms/internal/ads/zzbqy;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeay;->zzd:Lcom/google/android/gms/internal/ads/zzflb;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzeay;->zze:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeay;->zza:Lcom/google/android/gms/internal/ads/zzebb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeay;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeay;->zzc:Lcom/google/android/gms/internal/ads/zzbqy;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzeay;->zzd:Lcom/google/android/gms/internal/ads/zzflb;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzeay;->zze:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzebb;->zzk(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbqy;Lcom/google/android/gms/internal/ads/zzflb;Ljava/util/List;)V

    return-void
.end method
