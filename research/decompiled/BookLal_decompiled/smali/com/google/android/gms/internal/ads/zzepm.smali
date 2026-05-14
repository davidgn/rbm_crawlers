.class final synthetic Lcom/google/android/gms/internal/ads/zzepm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzfjv;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfjk;

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzela;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzepn;Lcom/google/android/gms/internal/ads/zzfjv;Lcom/google/android/gms/internal/ads/zzfjk;Lcom/google/android/gms/internal/ads/zzela;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzepm;->zza:Lcom/google/android/gms/internal/ads/zzfjv;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzepm;->zzb:Lcom/google/android/gms/internal/ads/zzfjk;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzepm;->zzc:Lcom/google/android/gms/internal/ads/zzela;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepm;->zza:Lcom/google/android/gms/internal/ads/zzfjv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzepm;->zzb:Lcom/google/android/gms/internal/ads/zzfjk;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzepm;->zzc:Lcom/google/android/gms/internal/ads/zzela;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzepq;->zzd(Lcom/google/android/gms/internal/ads/zzfjv;Lcom/google/android/gms/internal/ads/zzfjk;Lcom/google/android/gms/internal/ads/zzela;)V

    return-void
.end method
