.class final synthetic Lcom/google/android/gms/internal/ads/zzeio;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfnp;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzeip;

.field private final synthetic zzb:Z

.field private final synthetic zzc:Ljava/util/ArrayList;

.field private final synthetic zzd:Lcom/google/android/gms/internal/ads/zzbha$zzab;

.field private final synthetic zze:Lcom/google/android/gms/internal/ads/zzbha$zzaf$zzd;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeip;ZLjava/util/ArrayList;Lcom/google/android/gms/internal/ads/zzbha$zzab;Lcom/google/android/gms/internal/ads/zzbha$zzaf$zzd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeio;->zza:Lcom/google/android/gms/internal/ads/zzeip;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzeio;->zzb:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeio;->zzc:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeio;->zzd:Lcom/google/android/gms/internal/ads/zzbha$zzab;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzeio;->zze:Lcom/google/android/gms/internal/ads/zzbha$zzaf$zzd;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeio;->zza:Lcom/google/android/gms/internal/ads/zzeip;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeip;->zzb:Lcom/google/android/gms/internal/ads/zzeiq;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeir;->zzf()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeio;->zze:Lcom/google/android/gms/internal/ads/zzbha$zzaf$zzd;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeio;->zzd:Lcom/google/android/gms/internal/ads/zzbha$zzab;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzeio;->zzc:Ljava/util/ArrayList;

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzeio;->zzb:Z

    invoke-virtual {v0, v4, v3, v2, v1}, Lcom/google/android/gms/internal/ads/zzeiq;->zzc(ZLjava/util/ArrayList;Lcom/google/android/gms/internal/ads/zzbha$zzab;Lcom/google/android/gms/internal/ads/zzbha$zzaf$zzd;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, v4, v2}, Lcom/google/android/gms/internal/ads/zzeit;->zzf(Landroid/database/sqlite/SQLiteDatabase;ZZ)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeiq;->zzd()Lcom/google/android/gms/internal/ads/zzeii;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeii;->zzb()J

    move-result-wide v2

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzeit;->zze(Landroid/database/sqlite/SQLiteDatabase;J[B)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
