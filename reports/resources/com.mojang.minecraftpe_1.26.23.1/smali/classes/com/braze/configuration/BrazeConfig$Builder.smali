.class public final Lcom/braze/configuration/BrazeConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/braze/configuration/BrazeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008b\n\u0002\u0018\u0002\n\u0002\u0008d\n\u0002\u0018\u0002\n\u0002\u00082\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0002B\u0085\u0004\u0008\u0002\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0011\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0011\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0011\u0012\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0011\u0012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0011\u0012\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019\u0012\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0019\u0012\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0019\u0012\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0019\u0012\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0019\u0012\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0019\u0012\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0019\u0012\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u0019\u0012\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\u0019\u0012\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010\u0019\u0012\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010\u0019\u0012\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010\u0019\u0012\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010\u0019\u0012\n\u0008\u0002\u0010&\u001a\u0004\u0018\u00010\u0019\u0012\n\u0008\u0002\u0010\'\u001a\u0004\u0018\u00010\u0019\u0012\n\u0008\u0002\u0010(\u001a\u0004\u0018\u00010\u0019\u0012\n\u0008\u0002\u0010)\u001a\u0004\u0018\u00010\u0019\u0012\u0010\u0008\u0002\u0010*\u001a\n\u0012\u0004\u0012\u00020,\u0018\u00010+\u0012\n\u0008\u0002\u0010-\u001a\u0004\u0018\u00010\u0019\u0012\u0010\u0008\u0002\u0010.\u001a\n\u0012\u0004\u0012\u00020/\u0018\u00010+\u0012\u0010\u0008\u0002\u00100\u001a\n\u0012\u0004\u0012\u000201\u0018\u00010+\u0012\n\u0008\u0002\u00102\u001a\u0004\u0018\u00010\u0019\u0012\n\u0008\u0002\u00103\u001a\u0004\u0018\u00010\u0019\u00a2\u0006\u0002\u00104J\u0008\u0010\u0093\u0001\u001a\u00030\u0094\u0001J\u0012\u0010\u0095\u0001\u001a\u0004\u0018\u00010\u0004H\u00c0\u0003\u00a2\u0006\u0003\u0008\u0096\u0001J\u0012\u0010\u0097\u0001\u001a\u0004\u0018\u00010\u0004H\u00c0\u0003\u00a2\u0006\u0003\u0008\u0098\u0001J\u0012\u0010\u0099\u0001\u001a\u0004\u0018\u00010\u000fH\u00c0\u0003\u00a2\u0006\u0003\u0008\u009a\u0001J\u0014\u0010\u009b\u0001\u001a\u0004\u0018\u00010\u0011H\u00c0\u0003\u00a2\u0006\u0005\u0008\u009c\u0001\u0010AJ\u0014\u0010\u009d\u0001\u001a\u0004\u0018\u00010\u0011H\u00c0\u0003\u00a2\u0006\u0005\u0008\u009e\u0001\u0010AJ\u0014\u0010\u009f\u0001\u001a\u0004\u0018\u00010\u0011H\u00c0\u0003\u00a2\u0006\u0005\u0008\u00a0\u0001\u0010AJ\u0014\u0010\u00a1\u0001\u001a\u0004\u0018\u00010\u0011H\u00c0\u0003\u00a2\u0006\u0005\u0008\u00a2\u0001\u0010AJ\u0014\u0010\u00a3\u0001\u001a\u0004\u0018\u00010\u0011H\u00c0\u0003\u00a2\u0006\u0005\u0008\u00a4\u0001\u0010AJ\u0014\u0010\u00a5\u0001\u001a\u0004\u0018\u00010\u0011H\u00c0\u0003\u00a2\u0006\u0005\u0008\u00a6\u0001\u0010AJ\u0014\u0010\u00a7\u0001\u001a\u0004\u0018\u00010\u0011H\u00c0\u0003\u00a2\u0006\u0005\u0008\u00a8\u0001\u0010AJ\u0014\u0010\u00a9\u0001\u001a\u0004\u0018\u00010\u0019H\u00c0\u0003\u00a2\u0006\u0005\u0008\u00aa\u0001\u00106J\u0012\u0010\u00ab\u0001\u001a\u0004\u0018\u00010\u0004H\u00c0\u0003\u00a2\u0006\u0003\u0008\u00ac\u0001J\u0014\u0010\u00ad\u0001\u001a\u0004\u0018\u00010\u0019H\u00c0\u0003\u00a2\u0006\u0005\u0008\u00ae\u0001\u00106J\u0014\u0010\u00af\u0001\u001a\u0004\u0018\u00010\u0019H\u00c0\u0003\u00a2\u0006\u0005\u0008\u00b0\u0001\u00106J\u0014\u0010\u00b1\u0001\u001a\u0004\u0018\u00010\u0019H\u00c0\u0003\u00a2\u0006\u0005\u0008\u00b2\u0001\u00106J\u0014\u0010\u00b3\u0001\u001a\u0004\u0018\u00010\u0019H\u00c0\u0003\u00a2\u0006\u0005\u0008\u00b4\u0001\u00106J\u0014\u0010\u00b5\u0001\u001a\u0004\u0018\u00010\u0019H\u00c0\u0003\u00a2\u0006\u0005\u0008\u00b6\u0001\u00106J\u0014\u0010\u00b7\u0001\u001a\u0004\u0018\u00010\u0019H\u00c0\u0003\u00a2\u0006\u0005\u0008\u00b8\u0001\u00106J\u0014\u0010\u00b9\u0001\u001a\u0004\u0018\u00010\u0019H\u00c0\u0003\u00a2\u0006\u0005\u0008\u00ba\u0001\u00106J\u0014\u0010\u00bb\u0001\u001a\u0004\u0018\u00010\u0019H\u00c0\u0003\u00a2\u0006\u0005\u0008\u00bc\u0001\u00106J\u0014\u0010\u00bd\u0001\u001a\u0004\u0018\u00010\u0019H\u00c0\u0003\u00a2\u0006\u0005\u0008\u00be\u0001\u00106J\u0014\u0010\u00bf\u0001\u001a\u0004\u0018\u00010\u0019H\u00c0\u0003\u00a2\u0006\u0005\u0008\u00c0\u0001\u00106J\u0012\u0010\u00c1\u0001\u001a\u0004\u0018\u00010\u0004H\u00c0\u0003\u00a2\u0006\u0003\u0008\u00c2\u0001J\u0014\u0010\u00c3\u0001\u001a\u0004\u0018\u00010\u0019H\u00c0\u0003\u00a2\u0006\u0005\u0008\u00c4\u0001\u00106J\u0014\u0010\u00c5\u0001\u001a\u0004\u0018\u00010\u0019H\u00c0\u0003\u00a2\u0006\u0005\u0008\u00c6\u0001\u00106J\u0014\u0010\u00c7\u0001\u001a\u0004\u0018\u00010\u0019H\u00c0\u0003\u00a2\u0006\u0005\u0008\u00c8\u0001\u00106J\u0014\u0010\u00c9\u0001\u001a\u0004\u0018\u00010\u0019H\u00c0\u0003\u00a2\u0006\u0005\u0008\u00ca\u0001\u00106J\u0014\u0010\u00cb\u0001\u001a\u0004\u0018\u00010\u0019H\u00c0\u0003\u00a2\u0006\u0005\u0008\u00cc\u0001\u00106J\u0014\u0010\u00cd\u0001\u001a\u0004\u0018\u00010\u0019H\u00c0\u0003\u00a2\u0006\u0005\u0008\u00ce\u0001\u00106J\u0018\u0010\u00cf\u0001\u001a\n\u0012\u0004\u0012\u00020,\u0018\u00010+H\u00c0\u0003\u00a2\u0006\u0003\u0008\u00d0\u0001J\u0014\u0010\u00d1\u0001\u001a\u0004\u0018\u00010\u0019H\u00c0\u0003\u00a2\u0006\u0005\u0008\u00d2\u0001\u00106J\u0018\u0010\u00d3\u0001\u001a\n\u0012\u0004\u0012\u00020/\u0018\u00010+H\u00c0\u0003\u00a2\u0006\u0003\u0008\u00d4\u0001J\u0018\u0010\u00d5\u0001\u001a\n\u0012\u0004\u0012\u000201\u0018\u00010+H\u00c0\u0003\u00a2\u0006\u0003\u0008\u00d6\u0001J\u0012\u0010\u00d7\u0001\u001a\u0004\u0018\u00010\u0004H\u00c0\u0003\u00a2\u0006\u0003\u0008\u00d8\u0001J\u0014\u0010\u00d9\u0001\u001a\u0004\u0018\u00010\u0019H\u00c0\u0003\u00a2\u0006\u0005\u0008\u00da\u0001\u00106J\u0014\u0010\u00db\u0001\u001a\u0004\u0018\u00010\u0019H\u00c0\u0003\u00a2\u0006\u0005\u0008\u00dc\u0001\u00106J\u0012\u0010\u00dd\u0001\u001a\u0004\u0018\u00010\u0004H\u00c0\u0003\u00a2\u0006\u0003\u0008\u00de\u0001J\u0012\u0010\u00df\u0001\u001a\u0004\u0018\u00010\u0004H\u00c0\u0003\u00a2\u0006\u0003\u0008\u00e0\u0001J\u0012\u0010\u00e1\u0001\u001a\u0004\u0018\u00010\u0004H\u00c0\u0003\u00a2\u0006\u0003\u0008\u00e2\u0001J\u0012\u0010\u00e3\u0001\u001a\u0004\u0018\u00010\u0004H\u00c0\u0003\u00a2\u0006\u0003\u0008\u00e4\u0001J\u0012\u0010\u00e5\u0001\u001a\u0004\u0018\u00010\u0004H\u00c0\u0003\u00a2\u0006\u0003\u0008\u00e6\u0001J\u008e\u0004\u0010\u00e7\u0001\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00112\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00112\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00112\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00112\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00112\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00112\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00192\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00192\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00192\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00192\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00192\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u00192\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u00192\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u00192\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\u00192\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010\u00192\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010\u00192\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010\u00192\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010\u00192\n\u0008\u0002\u0010&\u001a\u0004\u0018\u00010\u00192\n\u0008\u0002\u0010\'\u001a\u0004\u0018\u00010\u00192\n\u0008\u0002\u0010(\u001a\u0004\u0018\u00010\u00192\n\u0008\u0002\u0010)\u001a\u0004\u0018\u00010\u00192\u0010\u0008\u0002\u0010*\u001a\n\u0012\u0004\u0012\u00020,\u0018\u00010+2\n\u0008\u0002\u0010-\u001a\u0004\u0018\u00010\u00192\u0010\u0008\u0002\u0010.\u001a\n\u0012\u0004\u0012\u00020/\u0018\u00010+2\u0010\u0008\u0002\u00100\u001a\n\u0012\u0004\u0012\u000201\u0018\u00010+2\n\u0008\u0002\u00102\u001a\u0004\u0018\u00010\u00192\n\u0008\u0002\u00103\u001a\u0004\u0018\u00010\u0019H\u00c6\u0001\u00a2\u0006\u0003\u0010\u00e8\u0001J\u0015\u0010\u00e9\u0001\u001a\u00020\u00192\t\u0010\u00ea\u0001\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\n\u0010\u00eb\u0001\u001a\u00020\u0011H\u00d6\u0001J\u000f\u0010\u00ec\u0001\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0019J\u000f\u0010\u00ed\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004J\u0010\u0010\u00ee\u0001\u001a\u00020\u00002\u0007\u0010\u00ef\u0001\u001a\u00020\u0019J\u0010\u0010\u00f0\u0001\u001a\u00020\u00002\u0007\u0010\u00f1\u0001\u001a\u00020\u0011J\u0010\u0010\u00f2\u0001\u001a\u00020\u00002\u0007\u0010\u00f3\u0001\u001a\u00020\u0019J\u000f\u0010\u00f4\u0001\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0004J\u0016\u0010\u00f5\u0001\u001a\u00020\u00002\r\u0010\u00f6\u0001\u001a\u0008\u0012\u0004\u0012\u0002010+J\u0015\u0010\u00f7\u0001\u001a\u00020\u00002\u000c\u0010\u00f8\u0001\u001a\u0007\u0012\u0002\u0008\u00030\u00f9\u0001J\u000f\u0010\u00fa\u0001\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0011J\u0010\u0010\u00fb\u0001\u001a\u00020\u00002\u0007\u0010\u00fc\u0001\u001a\u00020\u0004J\u0010\u0010\u00fd\u0001\u001a\u00020\u00002\u0007\u0010\u00fe\u0001\u001a\u00020\u0004J\u0015\u0010\u00ff\u0001\u001a\u00020\u00002\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u00020,0+J\u0010\u0010\u0080\u0002\u001a\u00020\u00002\u0007\u0010\u00ef\u0001\u001a\u00020\u0019J\u0017\u0010\u0081\u0002\u001a\u00020\u00002\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u00020,0+H\u0007J\u0012\u0010\u0082\u0002\u001a\u00020\u00002\u0007\u0010\u00ef\u0001\u001a\u00020\u0019H\u0007J\u0010\u0010\u0083\u0002\u001a\u00020\u00002\u0007\u0010\u00ef\u0001\u001a\u00020\u0019J\u0010\u0010\u0084\u0002\u001a\u00020\u00002\u0007\u0010\u0085\u0002\u001a\u00020\u0004J\u0010\u0010\u0086\u0002\u001a\u00020\u00002\u0007\u0010\u00ef\u0001\u001a\u00020\u0019J\u0010\u0010\u0087\u0002\u001a\u00020\u00002\u0007\u0010\u0088\u0002\u001a\u00020\u0011J\u0010\u0010\u0089\u0002\u001a\u00020\u00002\u0007\u0010\u008a\u0002\u001a\u00020\u0011J\u000f\u0010\u008b\u0002\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u0019J\u0010\u0010\u008c\u0002\u001a\u00020\u00002\u0007\u0010\u00ef\u0001\u001a\u00020\u0019J\u0010\u0010\u008d\u0002\u001a\u00020\u00002\u0007\u0010\u008e\u0002\u001a\u00020\u0011J\u0010\u0010\u008f\u0002\u001a\u00020\u00002\u0007\u0010\u0090\u0002\u001a\u00020\u0019J\u0010\u0010\u0091\u0002\u001a\u00020\u00002\u0007\u0010\u00ef\u0001\u001a\u00020\u0019J\u0010\u0010\u0092\u0002\u001a\u00020\u00002\u0007\u0010\u00ef\u0001\u001a\u00020\u0019J\u0010\u0010\u0093\u0002\u001a\u00020\u00002\u0007\u0010\u00ef\u0001\u001a\u00020\u0019J\u000f\u0010\u0094\u0002\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u0019J\u0010\u0010\u0095\u0002\u001a\u00020\u00002\u0007\u0010\u00ef\u0001\u001a\u00020\u0019J\u0010\u0010\u0096\u0002\u001a\u00020\u00002\u0007\u0010\u00ef\u0001\u001a\u00020\u0019J\u000f\u0010\u0097\u0002\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u0019J\u0010\u0010\u0098\u0002\u001a\u00020\u00002\u0007\u0010\u0099\u0002\u001a\u00020\u0019J\u000f\u0010\u009a\u0002\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0004J\u0010\u0010\u009b\u0002\u001a\u00020\u00002\u0007\u0010\u009c\u0002\u001a\u00020\u0019J\u0015\u0010\u009d\u0002\u001a\u00020\u00002\u000c\u0010\u009e\u0002\u001a\u0007\u0012\u0002\u0008\u00030\u00f9\u0001J\u0010\u0010\u009f\u0002\u001a\u00020\u00002\u0007\u0010\u00a0\u0002\u001a\u00020\u0019J\u0010\u0010\u00a1\u0002\u001a\u00020\u00002\u0007\u0010\u00ef\u0001\u001a\u00020\u0019J\u0011\u0010\u00a2\u0002\u001a\u00020\u00002\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fJ\u0018\u0010\u00a3\u0002\u001a\u00020\u00002\u000f\u0010\u00a4\u0002\u001a\n\u0012\u0004\u0012\u00020/\u0018\u00010+J\u000f\u0010\u00a5\u0002\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004J\u0010\u0010\u00a6\u0002\u001a\u00020\u00002\u0007\u0010\u00a7\u0002\u001a\u00020\u0011J\u000f\u0010\u00a8\u0002\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0004J\u000f\u0010\u00a9\u0002\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0011J\n\u0010\u00aa\u0002\u001a\u00020\u0004H\u00d6\u0001R\u001e\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0080\u000e\u00a2\u0006\u0010\n\u0002\u00109\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008:\u0010;\"\u0004\u0008<\u0010=R\u001e\u0010&\u001a\u0004\u0018\u00010\u0019X\u0080\u000e\u00a2\u0006\u0010\n\u0002\u00109\u001a\u0004\u0008>\u00106\"\u0004\u0008?\u00108R\u001e\u0010\u0014\u001a\u0004\u0018\u00010\u0011X\u0080\u000e\u00a2\u0006\u0010\n\u0002\u0010D\u001a\u0004\u0008@\u0010A\"\u0004\u0008B\u0010CR\"\u0010.\u001a\n\u0012\u0004\u0012\u00020/\u0018\u00010+X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008E\u0010F\"\u0004\u0008G\u0010HR\u001c\u0010\u0008\u001a\u0004\u0018\u00010\u0004X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008I\u0010;\"\u0004\u0008J\u0010=R\u001c\u0010\r\u001a\u0004\u0018\u00010\u0004X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008K\u0010;\"\u0004\u0008L\u0010=R\"\u00100\u001a\n\u0012\u0004\u0012\u000201\u0018\u00010+X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008M\u0010F\"\u0004\u0008N\u0010HR\u001e\u0010\u0012\u001a\u0004\u0018\u00010\u0011X\u0080\u000e\u00a2\u0006\u0010\n\u0002\u0010D\u001a\u0004\u0008O\u0010A\"\u0004\u0008P\u0010CR\u001c\u0010\n\u001a\u0004\u0018\u00010\u0004X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Q\u0010;\"\u0004\u0008R\u0010=R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008S\u0010;\"\u0004\u0008T\u0010=R\"\u0010*\u001a\n\u0012\u0004\u0012\u00020,\u0018\u00010+X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008U\u0010F\"\u0004\u0008V\u0010HR\u001e\u00103\u001a\u0004\u0018\u00010\u0019X\u0080\u000e\u00a2\u0006\u0010\n\u0002\u00109\u001a\u0004\u0008W\u00106\"\u0004\u0008X\u00108R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\u0004X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Y\u0010;\"\u0004\u0008Z\u0010=R\u001e\u0010\u0015\u001a\u0004\u0018\u00010\u0011X\u0080\u000e\u00a2\u0006\u0010\n\u0002\u0010D\u001a\u0004\u0008[\u0010A\"\u0004\u0008\\\u0010CR\u001e\u0010\u0016\u001a\u0004\u0018\u00010\u0011X\u0080\u000e\u00a2\u0006\u0010\n\u0002\u0010D\u001a\u0004\u0008]\u0010A\"\u0004\u0008^\u0010CR\u001e\u0010\u001a\u001a\u0004\u0018\u00010\u0019X\u0080\u000e\u00a2\u0006\u0010\n\u0002\u00109\u001a\u0004\u0008_\u00106\"\u0004\u0008`\u00108R\u001e\u0010%\u001a\u0004\u0018\u00010\u0019X\u0080\u000e\u00a2\u0006\u0010\n\u0002\u00109\u001a\u0004\u0008a\u00106\"\u0004\u0008b\u00108R\u001e\u0010\u0017\u001a\u0004\u0018\u00010\u0011X\u0080\u000e\u00a2\u0006\u0010\n\u0002\u0010D\u001a\u0004\u0008c\u0010A\"\u0004\u0008d\u0010CR\u001e\u0010 \u001a\u0004\u0018\u00010\u0019X\u0080\u000e\u00a2\u0006\u0010\n\u0002\u00109\u001a\u0004\u0008e\u00106\"\u0004\u0008f\u00108R\u001e\u0010-\u001a\u0004\u0018\u00010\u0019X\u0080\u000e\u00a2\u0006\u0010\n\u0002\u00109\u001a\u0004\u0008g\u00106\"\u0004\u0008h\u00108R\u001e\u0010\u001f\u001a\u0004\u0018\u00010\u0019X\u0080\u000e\u00a2\u0006\u0010\n\u0002\u00109\u001a\u0004\u0008i\u00106\"\u0004\u0008j\u00108R\u001e\u0010\'\u001a\u0004\u0018\u00010\u0019X\u0080\u000e\u00a2\u0006\u0010\n\u0002\u00109\u001a\u0004\u0008k\u00106\"\u0004\u0008l\u00108R\u001e\u0010$\u001a\u0004\u0018\u00010\u0019X\u0080\u000e\u00a2\u0006\u0010\n\u0002\u00109\u001a\u0004\u0008m\u00106\"\u0004\u0008n\u00108R\u001e\u00102\u001a\u0004\u0018\u00010\u0019X\u0080\u000e\u00a2\u0006\u0010\n\u0002\u00109\u001a\u0004\u0008o\u00106\"\u0004\u0008p\u00108R\u001e\u0010!\u001a\u0004\u0018\u00010\u0019X\u0080\u000e\u00a2\u0006\u0010\n\u0002\u00109\u001a\u0004\u0008q\u00106\"\u0004\u0008r\u00108R\u001e\u0010\u001b\u001a\u0004\u0018\u00010\u0019X\u0080\u000e\u00a2\u0006\u0010\n\u0002\u00109\u001a\u0004\u0008s\u00106\"\u0004\u0008t\u00108R\u001e\u0010\u001c\u001a\u0004\u0018\u00010\u0019X\u0080\u000e\u00a2\u0006\u0010\n\u0002\u00109\u001a\u0004\u0008u\u00106\"\u0004\u0008v\u00108R\u001e\u0010\u001d\u001a\u0004\u0018\u00010\u0019X\u0080\u000e\u00a2\u0006\u0010\n\u0002\u00109\u001a\u0004\u0008w\u00106\"\u0004\u0008x\u00108R\u001e\u0010#\u001a\u0004\u0018\u00010\u0019X\u0080\u000e\u00a2\u0006\u0010\n\u0002\u00109\u001a\u0004\u0008y\u00106\"\u0004\u0008z\u00108R\u001e\u0010\"\u001a\u0004\u0018\u00010\u0019X\u0080\u000e\u00a2\u0006\u0010\n\u0002\u00109\u001a\u0004\u0008{\u00106\"\u0004\u0008|\u00108R\u001e\u0010)\u001a\u0004\u0018\u00010\u0019X\u0080\u000e\u00a2\u0006\u0010\n\u0002\u00109\u001a\u0004\u0008}\u00106\"\u0004\u0008~\u00108R\u001f\u0010\u001e\u001a\u0004\u0018\u00010\u0019X\u0080\u000e\u00a2\u0006\u0011\n\u0002\u00109\u001a\u0004\u0008\u007f\u00106\"\u0005\u0008\u0080\u0001\u00108R \u0010(\u001a\u0004\u0018\u00010\u0019X\u0080\u000e\u00a2\u0006\u0012\n\u0002\u00109\u001a\u0005\u0008\u0081\u0001\u00106\"\u0005\u0008\u0082\u0001\u00108R\u001e\u0010\u0007\u001a\u0004\u0018\u00010\u0004X\u0080\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0083\u0001\u0010;\"\u0005\u0008\u0084\u0001\u0010=R\u001e\u0010\u000b\u001a\u0004\u0018\u00010\u0004X\u0080\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0085\u0001\u0010;\"\u0005\u0008\u0086\u0001\u0010=R \u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0080\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u0087\u0001\u0010\u0088\u0001\"\u0006\u0008\u0089\u0001\u0010\u008a\u0001R\u001e\u0010\u0005\u001a\u0004\u0018\u00010\u0004X\u0080\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u008b\u0001\u0010;\"\u0005\u0008\u008c\u0001\u0010=R \u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0080\u000e\u00a2\u0006\u0012\n\u0002\u0010D\u001a\u0005\u0008\u008d\u0001\u0010A\"\u0005\u0008\u008e\u0001\u0010CR\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u0004X\u0080\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u008f\u0001\u0010;\"\u0005\u0008\u0090\u0001\u0010=R \u0010\u0013\u001a\u0004\u0018\u00010\u0011X\u0080\u000e\u00a2\u0006\u0012\n\u0002\u0010D\u001a\u0005\u0008\u0091\u0001\u0010A\"\u0005\u0008\u0092\u0001\u0010C\u00a8\u0006\u00ab\u0002"
    }
    d2 = {
        "Lcom/braze/configuration/BrazeConfig$Builder;",
        "",
        "()V",
        "apiKey",
        "",
        "serverTarget",
        "smallNotificationIconName",
        "largeNotificationIconName",
        "customEndpoint",
        "defaultNotificationChannelName",
        "defaultNotificationChannelDescription",
        "pushDeepLinkBackStackActivityClassName",
        "firebaseCloudMessagingSenderIdKey",
        "customHtmlWebViewActivityClassName",
        "sdkFlavor",
        "Lcom/braze/enums/SdkFlavor;",
        "sessionTimeout",
        "",
        "defaultNotificationAccentColor",
        "triggerActionMinimumTimeIntervalSeconds",
        "badNetworkInterval",
        "goodNetworkInterval",
        "greatNetworkInterval",
        "inAppMessageWebViewClientMaxOnPageFinishedWaitMs",
        "admMessagingRegistrationEnabled",
        "",
        "handlePushDeepLinksAutomatically",
        "isLocationCollectionEnabled",
        "isNewsFeedVisualIndicatorOn",
        "isPushDeepLinkBackStackActivityEnabled",
        "isSessionStartBasedTimeoutEnabled",
        "isFirebaseCloudMessagingRegistrationEnabled",
        "isContentCardsUnreadVisualIndicatorEnabled",
        "isInAppMessageAccessibilityExclusiveModeEnabled",
        "isPushWakeScreenForNotificationEnabled",
        "isPushHtmlRenderingEnabled",
        "isGeofencesEnabled",
        "inAppMessageTestPushEagerDisplayEnabled",
        "automaticGeofenceRequestsEnabled",
        "isFirebaseMessagingServiceOnNewTokenRegistrationEnabled",
        "isTouchModeRequiredForHtmlInAppMessages",
        "isSdkAuthEnabled",
        "deviceObjectAllowlist",
        "Ljava/util/EnumSet;",
        "Lcom/braze/enums/DeviceKey;",
        "isDeviceObjectAllowlistEnabled",
        "brazeSdkMetadata",
        "Lcom/braze/enums/BrazeSdkMetadata;",
        "customLocationProviderNames",
        "Lcom/braze/enums/LocationProviderName;",
        "isHtmlInAppMessageApplyWindowInsetsEnabled",
        "doesPushStoryDismissOnClick",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/braze/enums/SdkFlavor;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/EnumSet;Ljava/lang/Boolean;Ljava/util/EnumSet;Ljava/util/EnumSet;Ljava/lang/Boolean;Ljava/lang/Boolean;)V",
        "getAdmMessagingRegistrationEnabled$android_sdk_base_release",
        "()Ljava/lang/Boolean;",
        "setAdmMessagingRegistrationEnabled$android_sdk_base_release",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "getApiKey$android_sdk_base_release",
        "()Ljava/lang/String;",
        "setApiKey$android_sdk_base_release",
        "(Ljava/lang/String;)V",
        "getAutomaticGeofenceRequestsEnabled$android_sdk_base_release",
        "setAutomaticGeofenceRequestsEnabled$android_sdk_base_release",
        "getBadNetworkInterval$android_sdk_base_release",
        "()Ljava/lang/Integer;",
        "setBadNetworkInterval$android_sdk_base_release",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "getBrazeSdkMetadata$android_sdk_base_release",
        "()Ljava/util/EnumSet;",
        "setBrazeSdkMetadata$android_sdk_base_release",
        "(Ljava/util/EnumSet;)V",
        "getCustomEndpoint$android_sdk_base_release",
        "setCustomEndpoint$android_sdk_base_release",
        "getCustomHtmlWebViewActivityClassName$android_sdk_base_release",
        "setCustomHtmlWebViewActivityClassName$android_sdk_base_release",
        "getCustomLocationProviderNames$android_sdk_base_release",
        "setCustomLocationProviderNames$android_sdk_base_release",
        "getDefaultNotificationAccentColor$android_sdk_base_release",
        "setDefaultNotificationAccentColor$android_sdk_base_release",
        "getDefaultNotificationChannelDescription$android_sdk_base_release",
        "setDefaultNotificationChannelDescription$android_sdk_base_release",
        "getDefaultNotificationChannelName$android_sdk_base_release",
        "setDefaultNotificationChannelName$android_sdk_base_release",
        "getDeviceObjectAllowlist$android_sdk_base_release",
        "setDeviceObjectAllowlist$android_sdk_base_release",
        "getDoesPushStoryDismissOnClick$android_sdk_base_release",
        "setDoesPushStoryDismissOnClick$android_sdk_base_release",
        "getFirebaseCloudMessagingSenderIdKey$android_sdk_base_release",
        "setFirebaseCloudMessagingSenderIdKey$android_sdk_base_release",
        "getGoodNetworkInterval$android_sdk_base_release",
        "setGoodNetworkInterval$android_sdk_base_release",
        "getGreatNetworkInterval$android_sdk_base_release",
        "setGreatNetworkInterval$android_sdk_base_release",
        "getHandlePushDeepLinksAutomatically$android_sdk_base_release",
        "setHandlePushDeepLinksAutomatically$android_sdk_base_release",
        "getInAppMessageTestPushEagerDisplayEnabled$android_sdk_base_release",
        "setInAppMessageTestPushEagerDisplayEnabled$android_sdk_base_release",
        "getInAppMessageWebViewClientMaxOnPageFinishedWaitMs$android_sdk_base_release",
        "setInAppMessageWebViewClientMaxOnPageFinishedWaitMs$android_sdk_base_release",
        "isContentCardsUnreadVisualIndicatorEnabled$android_sdk_base_release",
        "setContentCardsUnreadVisualIndicatorEnabled$android_sdk_base_release",
        "isDeviceObjectAllowlistEnabled$android_sdk_base_release",
        "setDeviceObjectAllowlistEnabled$android_sdk_base_release",
        "isFirebaseCloudMessagingRegistrationEnabled$android_sdk_base_release",
        "setFirebaseCloudMessagingRegistrationEnabled$android_sdk_base_release",
        "isFirebaseMessagingServiceOnNewTokenRegistrationEnabled$android_sdk_base_release",
        "setFirebaseMessagingServiceOnNewTokenRegistrationEnabled$android_sdk_base_release",
        "isGeofencesEnabled$android_sdk_base_release",
        "setGeofencesEnabled$android_sdk_base_release",
        "isHtmlInAppMessageApplyWindowInsetsEnabled$android_sdk_base_release",
        "setHtmlInAppMessageApplyWindowInsetsEnabled$android_sdk_base_release",
        "isInAppMessageAccessibilityExclusiveModeEnabled$android_sdk_base_release",
        "setInAppMessageAccessibilityExclusiveModeEnabled$android_sdk_base_release",
        "isLocationCollectionEnabled$android_sdk_base_release",
        "setLocationCollectionEnabled$android_sdk_base_release",
        "isNewsFeedVisualIndicatorOn$android_sdk_base_release",
        "setNewsFeedVisualIndicatorOn$android_sdk_base_release",
        "isPushDeepLinkBackStackActivityEnabled$android_sdk_base_release",
        "setPushDeepLinkBackStackActivityEnabled$android_sdk_base_release",
        "isPushHtmlRenderingEnabled$android_sdk_base_release",
        "setPushHtmlRenderingEnabled$android_sdk_base_release",
        "isPushWakeScreenForNotificationEnabled$android_sdk_base_release",
        "setPushWakeScreenForNotificationEnabled$android_sdk_base_release",
        "isSdkAuthEnabled$android_sdk_base_release",
        "setSdkAuthEnabled$android_sdk_base_release",
        "isSessionStartBasedTimeoutEnabled$android_sdk_base_release",
        "setSessionStartBasedTimeoutEnabled$android_sdk_base_release",
        "isTouchModeRequiredForHtmlInAppMessages$android_sdk_base_release",
        "setTouchModeRequiredForHtmlInAppMessages$android_sdk_base_release",
        "getLargeNotificationIconName$android_sdk_base_release",
        "setLargeNotificationIconName$android_sdk_base_release",
        "getPushDeepLinkBackStackActivityClassName$android_sdk_base_release",
        "setPushDeepLinkBackStackActivityClassName$android_sdk_base_release",
        "getSdkFlavor$android_sdk_base_release",
        "()Lcom/braze/enums/SdkFlavor;",
        "setSdkFlavor$android_sdk_base_release",
        "(Lcom/braze/enums/SdkFlavor;)V",
        "getServerTarget$android_sdk_base_release",
        "setServerTarget$android_sdk_base_release",
        "getSessionTimeout$android_sdk_base_release",
        "setSessionTimeout$android_sdk_base_release",
        "getSmallNotificationIconName$android_sdk_base_release",
        "setSmallNotificationIconName$android_sdk_base_release",
        "getTriggerActionMinimumTimeIntervalSeconds$android_sdk_base_release",
        "setTriggerActionMinimumTimeIntervalSeconds$android_sdk_base_release",
        "build",
        "Lcom/braze/configuration/BrazeConfig;",
        "component1",
        "component1$android_sdk_base_release",
        "component10",
        "component10$android_sdk_base_release",
        "component11",
        "component11$android_sdk_base_release",
        "component12",
        "component12$android_sdk_base_release",
        "component13",
        "component13$android_sdk_base_release",
        "component14",
        "component14$android_sdk_base_release",
        "component15",
        "component15$android_sdk_base_release",
        "component16",
        "component16$android_sdk_base_release",
        "component17",
        "component17$android_sdk_base_release",
        "component18",
        "component18$android_sdk_base_release",
        "component19",
        "component19$android_sdk_base_release",
        "component2",
        "component2$android_sdk_base_release",
        "component20",
        "component20$android_sdk_base_release",
        "component21",
        "component21$android_sdk_base_release",
        "component22",
        "component22$android_sdk_base_release",
        "component23",
        "component23$android_sdk_base_release",
        "component24",
        "component24$android_sdk_base_release",
        "component25",
        "component25$android_sdk_base_release",
        "component26",
        "component26$android_sdk_base_release",
        "component27",
        "component27$android_sdk_base_release",
        "component28",
        "component28$android_sdk_base_release",
        "component29",
        "component29$android_sdk_base_release",
        "component3",
        "component3$android_sdk_base_release",
        "component30",
        "component30$android_sdk_base_release",
        "component31",
        "component31$android_sdk_base_release",
        "component32",
        "component32$android_sdk_base_release",
        "component33",
        "component33$android_sdk_base_release",
        "component34",
        "component34$android_sdk_base_release",
        "component35",
        "component35$android_sdk_base_release",
        "component36",
        "component36$android_sdk_base_release",
        "component37",
        "component37$android_sdk_base_release",
        "component38",
        "component38$android_sdk_base_release",
        "component39",
        "component39$android_sdk_base_release",
        "component4",
        "component4$android_sdk_base_release",
        "component40",
        "component40$android_sdk_base_release",
        "component41",
        "component41$android_sdk_base_release",
        "component5",
        "component5$android_sdk_base_release",
        "component6",
        "component6$android_sdk_base_release",
        "component7",
        "component7$android_sdk_base_release",
        "component8",
        "component8$android_sdk_base_release",
        "component9",
        "component9$android_sdk_base_release",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/braze/enums/SdkFlavor;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/EnumSet;Ljava/lang/Boolean;Ljava/util/EnumSet;Ljava/util/EnumSet;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/braze/configuration/BrazeConfig$Builder;",
        "equals",
        "other",
        "hashCode",
        "setAdmMessagingRegistrationEnabled",
        "setApiKey",
        "setAutomaticGeofenceRequestsEnabled",
        "enabled",
        "setBadNetworkDataFlushInterval",
        "badNetworkIntervalSeconds",
        "setContentCardsUnreadVisualIndicatorEnabled",
        "contentCardsUnreadVisualIndicatorEnabled",
        "setCustomEndpoint",
        "setCustomLocationProviderNames",
        "locationProviderNames",
        "setCustomWebViewActivityClass",
        "customWebViewActivityClass",
        "Ljava/lang/Class;",
        "setDefaultNotificationAccentColor",
        "setDefaultNotificationChannelDescription",
        "description",
        "setDefaultNotificationChannelName",
        "name",
        "setDeviceObjectAllowlist",
        "setDeviceObjectAllowlistEnabled",
        "setDeviceObjectWhitelist",
        "setDeviceObjectWhitelistEnabled",
        "setDoesPushStoryDismissOnClick",
        "setFirebaseCloudMessagingSenderIdKey",
        "firebaseSenderId",
        "setGeofencesEnabled",
        "setGoodNetworkDataFlushInterval",
        "goodNetworkIntervalSeconds",
        "setGreatNetworkDataFlushInterval",
        "greatNetworkIntervalSeconds",
        "setHandlePushDeepLinksAutomatically",
        "setInAppMessageTestPushEagerDisplayEnabled",
        "setInAppMessageWebViewClientMaxOnPageFinishedWaitMs",
        "maxOnPageFinishedWaitMs",
        "setIsFirebaseCloudMessagingRegistrationEnabled",
        "firebaseMessagingRegistrationEnabled",
        "setIsFirebaseMessagingServiceOnNewTokenRegistrationEnabled",
        "setIsHtmlInAppMessageApplyWindowInsetsEnabled",
        "setIsInAppMessageAccessibilityExclusiveModeEnabled",
        "setIsLocationCollectionEnabled",
        "setIsPushWakeScreenForNotificationEnabled",
        "setIsSdkAuthenticationEnabled",
        "setIsSessionStartBasedTimeoutEnabled",
        "setIsTouchModeRequiredForHtmlInAppMessages",
        "required",
        "setLargeNotificationIcon",
        "setNewsfeedVisualIndicatorOn",
        "newsfeedVisualIndicatorOn",
        "setPushDeepLinkBackStackActivityClass",
        "pushDeepLinkActivityClass",
        "setPushDeepLinkBackStackActivityEnabled",
        "pushDeepLinkBackStackActivityEnabled",
        "setPushHtmlRenderingEnabled",
        "setSdkFlavor",
        "setSdkMetadata",
        "sdkMetadata",
        "setServerTarget",
        "setSessionTimeout",
        "sessionTimeoutSeconds",
        "setSmallNotificationIcon",
        "setTriggerActionMinimumTimeIntervalSeconds",
        "toString",
        "android-sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private admMessagingRegistrationEnabled:Ljava/lang/Boolean;

.field private apiKey:Ljava/lang/String;

.field private automaticGeofenceRequestsEnabled:Ljava/lang/Boolean;

.field private badNetworkInterval:Ljava/lang/Integer;

.field private brazeSdkMetadata:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/braze/enums/BrazeSdkMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private customEndpoint:Ljava/lang/String;

.field private customHtmlWebViewActivityClassName:Ljava/lang/String;

.field private customLocationProviderNames:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/braze/enums/LocationProviderName;",
            ">;"
        }
    .end annotation
.end field

.field private defaultNotificationAccentColor:Ljava/lang/Integer;

.field private defaultNotificationChannelDescription:Ljava/lang/String;

.field private defaultNotificationChannelName:Ljava/lang/String;

.field private deviceObjectAllowlist:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/braze/enums/DeviceKey;",
            ">;"
        }
    .end annotation
.end field

.field private doesPushStoryDismissOnClick:Ljava/lang/Boolean;

.field private firebaseCloudMessagingSenderIdKey:Ljava/lang/String;

.field private goodNetworkInterval:Ljava/lang/Integer;

.field private greatNetworkInterval:Ljava/lang/Integer;

.field private handlePushDeepLinksAutomatically:Ljava/lang/Boolean;

.field private inAppMessageTestPushEagerDisplayEnabled:Ljava/lang/Boolean;

.field private inAppMessageWebViewClientMaxOnPageFinishedWaitMs:Ljava/lang/Integer;

.field private isContentCardsUnreadVisualIndicatorEnabled:Ljava/lang/Boolean;

.field private isDeviceObjectAllowlistEnabled:Ljava/lang/Boolean;

.field private isFirebaseCloudMessagingRegistrationEnabled:Ljava/lang/Boolean;

.field private isFirebaseMessagingServiceOnNewTokenRegistrationEnabled:Ljava/lang/Boolean;

.field private isGeofencesEnabled:Ljava/lang/Boolean;

.field private isHtmlInAppMessageApplyWindowInsetsEnabled:Ljava/lang/Boolean;

.field private isInAppMessageAccessibilityExclusiveModeEnabled:Ljava/lang/Boolean;

.field private isLocationCollectionEnabled:Ljava/lang/Boolean;

.field private isNewsFeedVisualIndicatorOn:Ljava/lang/Boolean;

.field private isPushDeepLinkBackStackActivityEnabled:Ljava/lang/Boolean;

.field private isPushHtmlRenderingEnabled:Ljava/lang/Boolean;

.field private isPushWakeScreenForNotificationEnabled:Ljava/lang/Boolean;

.field private isSdkAuthEnabled:Ljava/lang/Boolean;

.field private isSessionStartBasedTimeoutEnabled:Ljava/lang/Boolean;

.field private isTouchModeRequiredForHtmlInAppMessages:Ljava/lang/Boolean;

.field private largeNotificationIconName:Ljava/lang/String;

.field private pushDeepLinkBackStackActivityClassName:Ljava/lang/String;

.field private sdkFlavor:Lcom/braze/enums/SdkFlavor;

.field private serverTarget:Ljava/lang/String;

.field private sessionTimeout:Ljava/lang/Integer;

.field private smallNotificationIconName:Ljava/lang/String;

.field private triggerActionMinimumTimeIntervalSeconds:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 45

    move-object/from16 v0, p0

    const/16 v43, 0x1ff

    const/16 v44, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, -0x2

    .line 44
    invoke-direct/range {v0 .. v44}, Lcom/braze/configuration/BrazeConfig$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/braze/enums/SdkFlavor;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/EnumSet;Ljava/lang/Boolean;Ljava/util/EnumSet;Ljava/util/EnumSet;Ljava/lang/Boolean;Ljava/lang/Boolean;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/braze/enums/SdkFlavor;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/EnumSet;Ljava/lang/Boolean;Ljava/util/EnumSet;Ljava/util/EnumSet;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/braze/enums/SdkFlavor;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/util/EnumSet<",
            "Lcom/braze/enums/DeviceKey;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/util/EnumSet<",
            "Lcom/braze/enums/BrazeSdkMetadata;",
            ">;",
            "Ljava/util/EnumSet<",
            "Lcom/braze/enums/LocationProviderName;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcom/braze/configuration/BrazeConfig$Builder;->apiKey:Ljava/lang/String;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcom/braze/configuration/BrazeConfig$Builder;->serverTarget:Ljava/lang/String;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lcom/braze/configuration/BrazeConfig$Builder;->smallNotificationIconName:Ljava/lang/String;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lcom/braze/configuration/BrazeConfig$Builder;->largeNotificationIconName:Ljava/lang/String;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lcom/braze/configuration/BrazeConfig$Builder;->customEndpoint:Ljava/lang/String;

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lcom/braze/configuration/BrazeConfig$Builder;->defaultNotificationChannelName:Ljava/lang/String;

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lcom/braze/configuration/BrazeConfig$Builder;->defaultNotificationChannelDescription:Ljava/lang/String;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lcom/braze/configuration/BrazeConfig$Builder;->pushDeepLinkBackStackActivityClassName:Ljava/lang/String;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lcom/braze/configuration/BrazeConfig$Builder;->firebaseCloudMessagingSenderIdKey:Ljava/lang/String;

    move-object v1, p10

    .line 11
    iput-object v1, v0, Lcom/braze/configuration/BrazeConfig$Builder;->customHtmlWebViewActivityClassName:Ljava/lang/String;

    move-object v1, p11

    .line 12
    iput-object v1, v0, Lcom/braze/configuration/BrazeConfig$Builder;->sdkFlavor:Lcom/braze/enums/SdkFlavor;

    move-object v1, p12

    .line 13
    iput-object v1, v0, Lcom/braze/configuration/BrazeConfig$Builder;->sessionTimeout:Ljava/lang/Integer;

    move-object v1, p13

    .line 14
    iput-object v1, v0, Lcom/braze/configuration/BrazeConfig$Builder;->defaultNotificationAccentColor:Ljava/lang/Integer;

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lcom/braze/configuration/BrazeConfig$Builder;->triggerActionMinimumTimeIntervalSeconds:Ljava/lang/Integer;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcom/braze/configuration/BrazeConfig$Builder;->badNetworkInterval:Ljava/lang/Integer;

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Lcom/braze/configuration/BrazeConfig$Builder;->goodNetworkInterval:Ljava/lang/Integer;

    move-object/from16 v1, p17

    .line 18
    iput-object v1, v0, Lcom/braze/configuration/BrazeConfig$Builder;->greatNetworkInterval:Ljava/lang/Integer;

    move-object/from16 v1, p18

    .line 19
    iput-object v1, v0, Lcom/braze/configuration/BrazeConfig$Builder;->inAppMessageWebViewClientMaxOnPageFinishedWaitMs:Ljava/lang/Integer;

    move-object/from16 v1, p19

    .line 20
    iput-object v1, v0, Lcom/braze/configuration/BrazeConfig$Builder;->admMessagingRegistrationEnabled:Ljava/lang/Boolean;

    move-object/from16 v1, p20

    .line 21
    iput-object v1, v0, Lcom/braze/configuration/BrazeConfig$Builder;->handlePushDeepLinksAutomatically:Ljava/lang/Boolean;

    move-object/from16 v1, p21

    .line 22
    iput-object v1, v0, Lcom/braze/configuration/BrazeConfig$Builder;->isLocationCollectionEnabled:Ljava/lang/Boolean;

    move-object/from16 v1, p22

    .line 23
    iput-object v1, v0, Lcom/braze/configuration/BrazeConfig$Builder;->isNewsFeedVisualIndicatorOn:Ljava/lang/Boolean;

    move-object/from16 v1, p23

    .line 24
    iput-object v1, v0, Lcom/braze/configuration/BrazeConfig$Builder;->isPushDeepLinkBackStackActivityEnabled:Ljava/lang/Boolean;

    move-object/from16 v1, p24

    .line 25
    iput-object v1, v0, Lcom/braze/configuration/BrazeConfig$Builder;->isSessionStartBasedTimeoutEnabled:Ljava/lang/Boolean;

    move-object/from16 v1, p25

    .line 26
    iput-object v1, v0, Lcom/braze/configuration/BrazeConfig$Builder;->isFirebaseCloudMessagingRegistrationEnabled:Ljava/lang/Boolean;

    move-object/from16 v1, p26

    .line 27
    iput-object v1, v0, Lcom/braze/configuration/BrazeConfig$Builder;->isContentCardsUnreadVisualIndicatorEnabled:Ljava/lang/Boolean;

    move-object/from16 v1, p27

    .line 28
    iput-object v1, v0, Lcom/braze/configuration/BrazeConfig$Builder;->isInAppMessageAccessibilityExclusiveModeEnabled:Ljava/lang/Boolean;

    move-object/from16 v1, p28

    .line 29
    iput-object v1, v0, Lcom/braze/configuration/BrazeConfig$Builder;->isPushWakeScreenForNotificationEnabled:Ljava/lang/Boolean;

    move-object/from16 v1, p29

    .line 30
    iput-object v1, v0, Lcom/braze/configuration/BrazeConfig$Builder;->isPushHtmlRenderingEnabled:Ljava/lang/Boolean;

    move-object/from16 v1, p30

    .line 31
    iput-object v1, v0, Lcom/braze/configuration/BrazeConfig$Builder;->isGeofencesEnabled:Ljava/lang/Boolean;

    move-object/from16 v1, p31

    .line 32
    iput-object v1, v0, Lcom/braze/configuration/BrazeConfig$Builder;->inAppMessageTestPushEagerDisplayEnabled:Ljava/lang/Boolean;

    move-object/from16 v1, p32

    .line 33
    iput-object v1, v0, Lcom/braze/configuration/BrazeConfig$Builder;->automaticGeofenceRequestsEnabled:Ljava/lang/Boolean;

    move-object/from16 v1, p33

    .line 34
    iput-object v1, v0, Lcom/braze/configuration/BrazeConfig$Builder;->isFirebaseMessagingServiceOnNewTokenRegistrationEnabled:Ljava/lang/Boolean;

    move-object/from16 v1, p34

    .line 35
    iput-object v1, v0, Lcom/braze/configuration/BrazeConfig$Builder;->isTouchModeRequiredForHtmlInAppMessages:Ljava/lang/Boolean;

    move-object/from16 v1, p35

    .line 36
    iput-object v1, v0, Lcom/braze/configuration/BrazeConfig$Builder;->isSdkAuthEnabled:Ljava/lang/Boolean;

    move-object/from16 v1, p36

    .line 37
    iput-object v1, v0, Lcom/braze/configuration/BrazeConfig$Builder;->deviceObjectAllowlist:Ljava/util/EnumSet;

    move-object/from16 v1, p37

    .line 38
    iput-object v1, v0, Lcom/braze/configuration/BrazeConfig$Builder;->isDeviceObjectAllowlistEnabled:Ljava/lang/Boolean;

    move-object/from16 v1, p38

    .line 39
    iput-object v1, v0, Lcom/braze/configuration/BrazeConfig$Builder;->brazeSdkMetadata:Ljava/util/EnumSet;

    move-object/from16 v1, p39

    .line 40
    iput-object v1, v0, Lcom/braze/configuration/BrazeConfig$Builder;->customLocationProviderNames:Ljava/util/EnumSet;

    move-object/from16 v1, p40

    .line 41
    iput-object v1, v0, Lcom/braze/configuration/BrazeConfig$Builder;->isHtmlInAppMessageApplyWindowInsetsEnabled:Ljava/lang/Boolean;

    move-object/from16 v1, p41

    .line 42
    iput-object v1, v0, Lcom/braze/configuration/BrazeConfig$Builder;->doesPushStoryDismissOnClick:Ljava/lang/Boolean;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/braze/enums/SdkFlavor;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/EnumSet;Ljava/lang/Boolean;Ljava/util/EnumSet;Ljava/util/EnumSet;Ljava/lang/Boolean;Ljava/lang/Boolean;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 40

    move/from16 v0, p42

    move/from16 v1, p43

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    move-object/from16 v4, p2

    :goto_1
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    move-object/from16 v5, p3

    :goto_2
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    goto :goto_3

    :cond_3
    move-object/from16 v6, p4

    :goto_3
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_4

    const/4 v7, 0x0

    goto :goto_4

    :cond_4
    move-object/from16 v7, p5

    :goto_4
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v8, p6

    :goto_5
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_6

    const/4 v9, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v9, p7

    :goto_6
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_7

    const/4 v10, 0x0

    goto :goto_7

    :cond_7
    move-object/from16 v10, p8

    :goto_7
    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_8

    const/4 v11, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v11, p9

    :goto_8
    and-int/lit16 v12, v0, 0x200

    if-eqz v12, :cond_9

    const/4 v12, 0x0

    goto :goto_9

    :cond_9
    move-object/from16 v12, p10

    :goto_9
    and-int/lit16 v13, v0, 0x400

    if-eqz v13, :cond_a

    const/4 v13, 0x0

    goto :goto_a

    :cond_a
    move-object/from16 v13, p11

    :goto_a
    and-int/lit16 v14, v0, 0x800

    if-eqz v14, :cond_b

    const/4 v14, 0x0

    goto :goto_b

    :cond_b
    move-object/from16 v14, p12

    :goto_b
    and-int/lit16 v15, v0, 0x1000

    if-eqz v15, :cond_c

    const/4 v15, 0x0

    goto :goto_c

    :cond_c
    move-object/from16 v15, p13

    :goto_c
    and-int/lit16 v3, v0, 0x2000

    if-eqz v3, :cond_d

    const/4 v3, 0x0

    goto :goto_d

    :cond_d
    move-object/from16 v3, p14

    :goto_d
    move-object/from16 v16, v3

    and-int/lit16 v3, v0, 0x4000

    if-eqz v3, :cond_e

    const/4 v3, 0x0

    goto :goto_e

    :cond_e
    move-object/from16 v3, p15

    :goto_e
    const v17, 0x8000

    and-int v17, v0, v17

    if-eqz v17, :cond_f

    const/16 v17, 0x0

    goto :goto_f

    :cond_f
    move-object/from16 v17, p16

    :goto_f
    const/high16 v18, 0x10000

    and-int v18, v0, v18

    if-eqz v18, :cond_10

    const/16 v18, 0x0

    goto :goto_10

    :cond_10
    move-object/from16 v18, p17

    :goto_10
    const/high16 v19, 0x20000

    and-int v19, v0, v19

    if-eqz v19, :cond_11

    const/16 v19, 0x0

    goto :goto_11

    :cond_11
    move-object/from16 v19, p18

    :goto_11
    const/high16 v20, 0x40000

    and-int v20, v0, v20

    if-eqz v20, :cond_12

    const/16 v20, 0x0

    goto :goto_12

    :cond_12
    move-object/from16 v20, p19

    :goto_12
    const/high16 v21, 0x80000

    and-int v21, v0, v21

    if-eqz v21, :cond_13

    const/16 v21, 0x0

    goto :goto_13

    :cond_13
    move-object/from16 v21, p20

    :goto_13
    const/high16 v22, 0x100000

    and-int v22, v0, v22

    if-eqz v22, :cond_14

    const/16 v22, 0x0

    goto :goto_14

    :cond_14
    move-object/from16 v22, p21

    :goto_14
    const/high16 v23, 0x200000

    and-int v23, v0, v23

    if-eqz v23, :cond_15

    const/16 v23, 0x0

    goto :goto_15

    :cond_15
    move-object/from16 v23, p22

    :goto_15
    const/high16 v24, 0x400000

    and-int v24, v0, v24

    if-eqz v24, :cond_16

    const/16 v24, 0x0

    goto :goto_16

    :cond_16
    move-object/from16 v24, p23

    :goto_16
    const/high16 v25, 0x800000

    and-int v25, v0, v25

    if-eqz v25, :cond_17

    const/16 v25, 0x0

    goto :goto_17

    :cond_17
    move-object/from16 v25, p24

    :goto_17
    const/high16 v26, 0x1000000

    and-int v26, v0, v26

    if-eqz v26, :cond_18

    const/16 v26, 0x0

    goto :goto_18

    :cond_18
    move-object/from16 v26, p25

    :goto_18
    const/high16 v27, 0x2000000

    and-int v27, v0, v27

    if-eqz v27, :cond_19

    const/16 v27, 0x0

    goto :goto_19

    :cond_19
    move-object/from16 v27, p26

    :goto_19
    const/high16 v28, 0x4000000

    and-int v28, v0, v28

    if-eqz v28, :cond_1a

    const/16 v28, 0x0

    goto :goto_1a

    :cond_1a
    move-object/from16 v28, p27

    :goto_1a
    const/high16 v29, 0x8000000

    and-int v29, v0, v29

    if-eqz v29, :cond_1b

    const/16 v29, 0x0

    goto :goto_1b

    :cond_1b
    move-object/from16 v29, p28

    :goto_1b
    const/high16 v30, 0x10000000

    and-int v30, v0, v30

    if-eqz v30, :cond_1c

    const/16 v30, 0x0

    goto :goto_1c

    :cond_1c
    move-object/from16 v30, p29

    :goto_1c
    const/high16 v31, 0x20000000

    and-int v31, v0, v31

    if-eqz v31, :cond_1d

    const/16 v31, 0x0

    goto :goto_1d

    :cond_1d
    move-object/from16 v31, p30

    :goto_1d
    const/high16 v32, 0x40000000

    and-int v32, v0, v32

    if-eqz v32, :cond_1e

    const/16 v32, 0x0

    goto :goto_1e

    :cond_1e
    move-object/from16 v32, p31

    :goto_1e
    const/high16 v33, -0x80000000

    and-int v0, v0, v33

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    goto :goto_1f

    :cond_1f
    move-object/from16 v0, p32

    :goto_1f
    and-int/lit8 v33, v1, 0x1

    if-eqz v33, :cond_20

    const/16 v33, 0x0

    goto :goto_20

    :cond_20
    move-object/from16 v33, p33

    :goto_20
    and-int/lit8 v34, v1, 0x2

    if-eqz v34, :cond_21

    const/16 v34, 0x0

    goto :goto_21

    :cond_21
    move-object/from16 v34, p34

    :goto_21
    and-int/lit8 v35, v1, 0x4

    if-eqz v35, :cond_22

    const/16 v35, 0x0

    goto :goto_22

    :cond_22
    move-object/from16 v35, p35

    :goto_22
    and-int/lit8 v36, v1, 0x8

    if-eqz v36, :cond_23

    const/16 v36, 0x0

    goto :goto_23

    :cond_23
    move-object/from16 v36, p36

    :goto_23
    and-int/lit8 v37, v1, 0x10

    if-eqz v37, :cond_24

    const/16 v37, 0x0

    goto :goto_24

    :cond_24
    move-object/from16 v37, p37

    :goto_24
    and-int/lit8 v38, v1, 0x20

    if-eqz v38, :cond_25

    const/16 v38, 0x0

    goto :goto_25

    :cond_25
    move-object/from16 v38, p38

    :goto_25
    and-int/lit8 v39, v1, 0x40

    if-eqz v39, :cond_26

    const/16 v39, 0x0

    goto :goto_26

    :cond_26
    move-object/from16 v39, p39

    :goto_26
    move-object/from16 p42, v0

    and-int/lit16 v0, v1, 0x80

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    goto :goto_27

    :cond_27
    move-object/from16 v0, p40

    :goto_27
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_28

    const/4 v1, 0x0

    goto :goto_28

    :cond_28
    move-object/from16 v1, p41

    :goto_28
    move-object/from16 p1, p0

    move-object/from16 p2, v2

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p14, v15

    move-object/from16 p15, v16

    move-object/from16 p16, v3

    move-object/from16 p17, v17

    move-object/from16 p18, v18

    move-object/from16 p19, v19

    move-object/from16 p20, v20

    move-object/from16 p21, v21

    move-object/from16 p22, v22

    move-object/from16 p23, v23

    move-object/from16 p24, v24

    move-object/from16 p25, v25

    move-object/from16 p26, v26

    move-object/from16 p27, v27

    move-object/from16 p28, v28

    move-object/from16 p29, v29

    move-object/from16 p30, v30

    move-object/from16 p31, v31

    move-object/from16 p32, v32

    move-object/from16 p33, p42

    move-object/from16 p34, v33

    move-object/from16 p35, v34

    move-object/from16 p36, v35

    move-object/from16 p37, v36

    move-object/from16 p38, v37

    move-object/from16 p39, v38

    move-object/from16 p40, v39

    move-object/from16 p41, v0

    move-object/from16 p42, v1

    .line 43
    invoke-direct/range {p1 .. p42}, Lcom/braze/configuration/BrazeConfig$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/braze/enums/SdkFlavor;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/EnumSet;Ljava/lang/Boolean;Ljava/util/EnumSet;Ljava/util/EnumSet;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/braze/configuration/BrazeConfig$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/braze/enums/SdkFlavor;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/EnumSet;Ljava/lang/Boolean;Ljava/util/EnumSet;Ljava/util/EnumSet;Ljava/lang/Boolean;Ljava/lang/Boolean;IILjava/lang/Object;)Lcom/braze/configuration/BrazeConfig$Builder;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p42

    move/from16 v2, p43

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/braze/configuration/BrazeConfig$Builder;->apiKey:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v3, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/braze/configuration/BrazeConfig$Builder;->serverTarget:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v4, p2

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/braze/configuration/BrazeConfig$Builder;->smallNotificationIconName:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v5, p3

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/braze/configuration/BrazeConfig$Builder;->largeNotificationIconName:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v6, p4

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/braze/configuration/BrazeConfig$Builder;->customEndpoint:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p5

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/braze/configuration/BrazeConfig$Builder;->defaultNotificationChannelName:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p6

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget-object v9, v0, Lcom/braze/configuration/BrazeConfig$Builder;->defaultNotificationChannelDescription:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v9, p7

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget-object v10, v0, Lcom/braze/configuration/BrazeConfig$Builder;->pushDeepLinkBackStackActivityClassName:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v10, p8

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    iget-object v11, v0, Lcom/braze/configuration/BrazeConfig$Builder;->firebaseCloudMessagingSenderIdKey:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v11, p9

    :goto_8
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_9

    iget-object v12, v0, Lcom/braze/configuration/BrazeConfig$Builder;->customHtmlWebViewActivityClassName:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v12, p10

    :goto_9
    and-int/lit16 v13, v1, 0x400

    if-eqz v13, :cond_a

    iget-object v13, v0, Lcom/braze/configuration/BrazeConfig$Builder;->sdkFlavor:Lcom/braze/enums/SdkFlavor;

    goto :goto_a

    :cond_a
    move-object/from16 v13, p11

    :goto_a
    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_b

    iget-object v14, v0, Lcom/braze/configuration/BrazeConfig$Builder;->sessionTimeout:Ljava/lang/Integer;

    goto :goto_b

    :cond_b
    move-object/from16 v14, p12

    :goto_b
    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_c

    iget-object v15, v0, Lcom/braze/configuration/BrazeConfig$Builder;->defaultNotificationAccentColor:Ljava/lang/Integer;

    goto :goto_c

    :cond_c
    move-object/from16 v15, p13

    :goto_c
    move-object/from16 p13, v15

    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/braze/configuration/BrazeConfig$Builder;->triggerActionMinimumTimeIntervalSeconds:Ljava/lang/Integer;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lcom/braze/configuration/BrazeConfig$Builder;->badNetworkInterval:Ljava/lang/Integer;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p15, v15

    if-eqz v16, :cond_f

    iget-object v15, v0, Lcom/braze/configuration/BrazeConfig$Builder;->goodNetworkInterval:Ljava/lang/Integer;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-object/from16 p16, v15

    if-eqz v16, :cond_10

    iget-object v15, v0, Lcom/braze/configuration/BrazeConfig$Builder;->greatNetworkInterval:Ljava/lang/Integer;

    goto :goto_10

    :cond_10
    move-object/from16 v15, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move-object/from16 p17, v15

    if-eqz v16, :cond_11

    iget-object v15, v0, Lcom/braze/configuration/BrazeConfig$Builder;->inAppMessageWebViewClientMaxOnPageFinishedWaitMs:Ljava/lang/Integer;

    goto :goto_11

    :cond_11
    move-object/from16 v15, p18

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-object/from16 p18, v15

    if-eqz v16, :cond_12

    iget-object v15, v0, Lcom/braze/configuration/BrazeConfig$Builder;->admMessagingRegistrationEnabled:Ljava/lang/Boolean;

    goto :goto_12

    :cond_12
    move-object/from16 v15, p19

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move-object/from16 p19, v15

    if-eqz v16, :cond_13

    iget-object v15, v0, Lcom/braze/configuration/BrazeConfig$Builder;->handlePushDeepLinksAutomatically:Ljava/lang/Boolean;

    goto :goto_13

    :cond_13
    move-object/from16 v15, p20

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    move-object/from16 p20, v15

    if-eqz v16, :cond_14

    iget-object v15, v0, Lcom/braze/configuration/BrazeConfig$Builder;->isLocationCollectionEnabled:Ljava/lang/Boolean;

    goto :goto_14

    :cond_14
    move-object/from16 v15, p21

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, v1, v16

    move-object/from16 p21, v15

    if-eqz v16, :cond_15

    iget-object v15, v0, Lcom/braze/configuration/BrazeConfig$Builder;->isNewsFeedVisualIndicatorOn:Ljava/lang/Boolean;

    goto :goto_15

    :cond_15
    move-object/from16 v15, p22

    :goto_15
    const/high16 v16, 0x400000

    and-int v16, v1, v16

    move-object/from16 p22, v15

    if-eqz v16, :cond_16

    iget-object v15, v0, Lcom/braze/configuration/BrazeConfig$Builder;->isPushDeepLinkBackStackActivityEnabled:Ljava/lang/Boolean;

    goto :goto_16

    :cond_16
    move-object/from16 v15, p23

    :goto_16
    const/high16 v16, 0x800000

    and-int v16, v1, v16

    move-object/from16 p23, v15

    if-eqz v16, :cond_17

    iget-object v15, v0, Lcom/braze/configuration/BrazeConfig$Builder;->isSessionStartBasedTimeoutEnabled:Ljava/lang/Boolean;

    goto :goto_17

    :cond_17
    move-object/from16 v15, p24

    :goto_17
    const/high16 v16, 0x1000000

    and-int v16, v1, v16

    move-object/from16 p24, v15

    if-eqz v16, :cond_18

    iget-object v15, v0, Lcom/braze/configuration/BrazeConfig$Builder;->isFirebaseCloudMessagingRegistrationEnabled:Ljava/lang/Boolean;

    goto :goto_18

    :cond_18
    move-object/from16 v15, p25

    :goto_18
    const/high16 v16, 0x2000000

    and-int v16, v1, v16

    move-object/from16 p25, v15

    if-eqz v16, :cond_19

    iget-object v15, v0, Lcom/braze/configuration/BrazeConfig$Builder;->isContentCardsUnreadVisualIndicatorEnabled:Ljava/lang/Boolean;

    goto :goto_19

    :cond_19
    move-object/from16 v15, p26

    :goto_19
    const/high16 v16, 0x4000000

    and-int v16, v1, v16

    move-object/from16 p26, v15

    if-eqz v16, :cond_1a

    iget-object v15, v0, Lcom/braze/configuration/BrazeConfig$Builder;->isInAppMessageAccessibilityExclusiveModeEnabled:Ljava/lang/Boolean;

    goto :goto_1a

    :cond_1a
    move-object/from16 v15, p27

    :goto_1a
    const/high16 v16, 0x8000000

    and-int v16, v1, v16

    move-object/from16 p27, v15

    if-eqz v16, :cond_1b

    iget-object v15, v0, Lcom/braze/configuration/BrazeConfig$Builder;->isPushWakeScreenForNotificationEnabled:Ljava/lang/Boolean;

    goto :goto_1b

    :cond_1b
    move-object/from16 v15, p28

    :goto_1b
    const/high16 v16, 0x10000000

    and-int v16, v1, v16

    move-object/from16 p28, v15

    if-eqz v16, :cond_1c

    iget-object v15, v0, Lcom/braze/configuration/BrazeConfig$Builder;->isPushHtmlRenderingEnabled:Ljava/lang/Boolean;

    goto :goto_1c

    :cond_1c
    move-object/from16 v15, p29

    :goto_1c
    const/high16 v16, 0x20000000

    and-int v16, v1, v16

    move-object/from16 p29, v15

    if-eqz v16, :cond_1d

    iget-object v15, v0, Lcom/braze/configuration/BrazeConfig$Builder;->isGeofencesEnabled:Ljava/lang/Boolean;

    goto :goto_1d

    :cond_1d
    move-object/from16 v15, p30

    :goto_1d
    const/high16 v16, 0x40000000

    and-int v16, v1, v16

    move-object/from16 p30, v15

    if-eqz v16, :cond_1e

    iget-object v15, v0, Lcom/braze/configuration/BrazeConfig$Builder;->inAppMessageTestPushEagerDisplayEnabled:Ljava/lang/Boolean;

    goto :goto_1e

    :cond_1e
    move-object/from16 v15, p31

    :goto_1e
    const/high16 v16, -0x80000000

    and-int v1, v1, v16

    if-eqz v1, :cond_1f

    iget-object v1, v0, Lcom/braze/configuration/BrazeConfig$Builder;->automaticGeofenceRequestsEnabled:Ljava/lang/Boolean;

    goto :goto_1f

    :cond_1f
    move-object/from16 v1, p32

    :goto_1f
    and-int/lit8 v16, v2, 0x1

    move-object/from16 p32, v1

    if-eqz v16, :cond_20

    iget-object v1, v0, Lcom/braze/configuration/BrazeConfig$Builder;->isFirebaseMessagingServiceOnNewTokenRegistrationEnabled:Ljava/lang/Boolean;

    goto :goto_20

    :cond_20
    move-object/from16 v1, p33

    :goto_20
    and-int/lit8 v16, v2, 0x2

    move-object/from16 p33, v1

    if-eqz v16, :cond_21

    iget-object v1, v0, Lcom/braze/configuration/BrazeConfig$Builder;->isTouchModeRequiredForHtmlInAppMessages:Ljava/lang/Boolean;

    goto :goto_21

    :cond_21
    move-object/from16 v1, p34

    :goto_21
    and-int/lit8 v16, v2, 0x4

    move-object/from16 p34, v1

    if-eqz v16, :cond_22

    iget-object v1, v0, Lcom/braze/configuration/BrazeConfig$Builder;->isSdkAuthEnabled:Ljava/lang/Boolean;

    goto :goto_22

    :cond_22
    move-object/from16 v1, p35

    :goto_22
    and-int/lit8 v16, v2, 0x8

    move-object/from16 p35, v1

    if-eqz v16, :cond_23

    iget-object v1, v0, Lcom/braze/configuration/BrazeConfig$Builder;->deviceObjectAllowlist:Ljava/util/EnumSet;

    goto :goto_23

    :cond_23
    move-object/from16 v1, p36

    :goto_23
    and-int/lit8 v16, v2, 0x10

    move-object/from16 p36, v1

    if-eqz v16, :cond_24

    iget-object v1, v0, Lcom/braze/configuration/BrazeConfig$Builder;->isDeviceObjectAllowlistEnabled:Ljava/lang/Boolean;

    goto :goto_24

    :cond_24
    move-object/from16 v1, p37

    :goto_24
    and-int/lit8 v16, v2, 0x20

    move-object/from16 p37, v1

    if-eqz v16, :cond_25

    iget-object v1, v0, Lcom/braze/configuration/BrazeConfig$Builder;->brazeSdkMetadata:Ljava/util/EnumSet;

    goto :goto_25

    :cond_25
    move-object/from16 v1, p38

    :goto_25
    and-int/lit8 v16, v2, 0x40

    move-object/from16 p38, v1

    if-eqz v16, :cond_26

    iget-object v1, v0, Lcom/braze/configuration/BrazeConfig$Builder;->customLocationProviderNames:Ljava/util/EnumSet;

    goto :goto_26

    :cond_26
    move-object/from16 v1, p39

    :goto_26
    move-object/from16 p39, v1

    and-int/lit16 v1, v2, 0x80

    if-eqz v1, :cond_27

    iget-object v1, v0, Lcom/braze/configuration/BrazeConfig$Builder;->isHtmlInAppMessageApplyWindowInsetsEnabled:Ljava/lang/Boolean;

    goto :goto_27

    :cond_27
    move-object/from16 v1, p40

    :goto_27
    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_28

    iget-object v2, v0, Lcom/braze/configuration/BrazeConfig$Builder;->doesPushStoryDismissOnClick:Ljava/lang/Boolean;

    goto :goto_28

    :cond_28
    move-object/from16 v2, p41

    :goto_28
    move-object/from16 p1, v3

    move-object/from16 p2, v4

    move-object/from16 p3, v5

    move-object/from16 p4, v6

    move-object/from16 p5, v7

    move-object/from16 p6, v8

    move-object/from16 p7, v9

    move-object/from16 p8, v10

    move-object/from16 p9, v11

    move-object/from16 p10, v12

    move-object/from16 p11, v13

    move-object/from16 p12, v14

    move-object/from16 p31, v15

    move-object/from16 p40, v1

    move-object/from16 p41, v2

    invoke-virtual/range {p0 .. p41}, Lcom/braze/configuration/BrazeConfig$Builder;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/braze/enums/SdkFlavor;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/EnumSet;Ljava/lang/Boolean;Ljava/util/EnumSet;Ljava/util/EnumSet;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/braze/configuration/BrazeConfig$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final build()Lcom/braze/configuration/BrazeConfig;
    .locals 2

    .line 1
    new-instance v0, Lcom/braze/configuration/BrazeConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/braze/configuration/BrazeConfig;-><init>(Lcom/braze/configuration/BrazeConfig$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final component1$android_sdk_base_release()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->apiKey:Ljava/lang/String;

    return-object v0
.end method

.method public final component10$android_sdk_base_release()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->customHtmlWebViewActivityClassName:Ljava/lang/String;

    return-object v0
.end method

.method public final component11$android_sdk_base_release()Lcom/braze/enums/SdkFlavor;
    .locals 1

    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->sdkFlavor:Lcom/braze/enums/SdkFlavor;

    return-object v0
.end method

.method public final component12$android_sdk_base_release()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->sessionTimeout:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component13$android_sdk_base_release()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->defaultNotificationAccentColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component14$android_sdk_base_release()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->triggerActionMinimumTimeIntervalSeconds:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component15$android_sdk_base_release()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->badNetworkInterval:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component16$android_sdk_base_release()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->goodNetworkInterval:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component17$android_sdk_base_release()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->greatNetworkInterval:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component18$android_sdk_base_release()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->inAppMessageWebViewClientMaxOnPageFinishedWaitMs:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component19$android_sdk_base_release()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->admMessagingRegistrationEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component2$android_sdk_base_release()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->serverTarget:Ljava/lang/String;

    return-object v0
.end method

.method public final component20$android_sdk_base_release()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->handlePushDeepLinksAutomatically:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component21$android_sdk_base_release()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isLocationCollectionEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component22$android_sdk_base_release()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isNewsFeedVisualIndicatorOn:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component23$android_sdk_base_release()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isPushDeepLinkBackStackActivityEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component24$android_sdk_base_release()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isSessionStartBasedTimeoutEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component25$android_sdk_base_release()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isFirebaseCloudMessagingRegistrationEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component26$android_sdk_base_release()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isContentCardsUnreadVisualIndicatorEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component27$android_sdk_base_release()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isInAppMessageAccessibilityExclusiveModeEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component28$android_sdk_base_release()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isPushWakeScreenForNotificationEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component29$android_sdk_base_release()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isPushHtmlRenderingEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component3$android_sdk_base_release()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->smallNotificationIconName:Ljava/lang/String;

    return-object v0
.end method

.method public final component30$android_sdk_base_release()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isGeofencesEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component31$android_sdk_base_release()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->inAppMessageTestPushEagerDisplayEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component32$android_sdk_base_release()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->automaticGeofenceRequestsEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component33$android_sdk_base_release()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isFirebaseMessagingServiceOnNewTokenRegistrationEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component34$android_sdk_base_release()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isTouchModeRequiredForHtmlInAppMessages:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component35$android_sdk_base_release()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isSdkAuthEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component36$android_sdk_base_release()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/braze/enums/DeviceKey;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->deviceObjectAllowlist:Ljava/util/EnumSet;

    return-object v0
.end method

.method public final component37$android_sdk_base_release()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isDeviceObjectAllowlistEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component38$android_sdk_base_release()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/braze/enums/BrazeSdkMetadata;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->brazeSdkMetadata:Ljava/util/EnumSet;

    return-object v0
.end method

.method public final component39$android_sdk_base_release()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/braze/enums/LocationProviderName;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->customLocationProviderNames:Ljava/util/EnumSet;

    return-object v0
.end method

.method public final component4$android_sdk_base_release()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->largeNotificationIconName:Ljava/lang/String;

    return-object v0
.end method

.method public final component40$android_sdk_base_release()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isHtmlInAppMessageApplyWindowInsetsEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component41$android_sdk_base_release()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->doesPushStoryDismissOnClick:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component5$android_sdk_base_release()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->customEndpoint:Ljava/lang/String;

    return-object v0
.end method

.method public final component6$android_sdk_base_release()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->defaultNotificationChannelName:Ljava/lang/String;

    return-object v0
.end method

.method public final component7$android_sdk_base_release()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->defaultNotificationChannelDescription:Ljava/lang/String;

    return-object v0
.end method

.method public final component8$android_sdk_base_release()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->pushDeepLinkBackStackActivityClassName:Ljava/lang/String;

    return-object v0
.end method

.method public final component9$android_sdk_base_release()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->firebaseCloudMessagingSenderIdKey:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/braze/enums/SdkFlavor;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/EnumSet;Ljava/lang/Boolean;Ljava/util/EnumSet;Ljava/util/EnumSet;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/braze/configuration/BrazeConfig$Builder;
    .locals 43
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/braze/enums/SdkFlavor;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/util/EnumSet<",
            "Lcom/braze/enums/DeviceKey;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/util/EnumSet<",
            "Lcom/braze/enums/BrazeSdkMetadata;",
            ">;",
            "Ljava/util/EnumSet<",
            "Lcom/braze/enums/LocationProviderName;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/braze/configuration/BrazeConfig$Builder;"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move-object/from16 v26, p26

    move-object/from16 v27, p27

    move-object/from16 v28, p28

    move-object/from16 v29, p29

    move-object/from16 v30, p30

    move-object/from16 v31, p31

    move-object/from16 v32, p32

    move-object/from16 v33, p33

    move-object/from16 v34, p34

    move-object/from16 v35, p35

    move-object/from16 v36, p36

    move-object/from16 v37, p37

    move-object/from16 v38, p38

    move-object/from16 v39, p39

    move-object/from16 v40, p40

    move-object/from16 v41, p41

    new-instance v42, Lcom/braze/configuration/BrazeConfig$Builder;

    move-object/from16 v0, v42

    invoke-direct/range {v0 .. v41}, Lcom/braze/configuration/BrazeConfig$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/braze/enums/SdkFlavor;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/EnumSet;Ljava/lang/Boolean;Ljava/util/EnumSet;Ljava/util/EnumSet;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-object v42
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/braze/configuration/BrazeConfig$Builder;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/braze/configuration/BrazeConfig$Builder;

    iget-object v1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->apiKey:Ljava/lang/String;

    iget-object v3, p1, Lcom/braze/configuration/BrazeConfig$Builder;->apiKey:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->serverTarget:Ljava/lang/String;

    iget-object v3, p1, Lcom/braze/configuration/BrazeConfig$Builder;->serverTarget:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->smallNotificationIconName:Ljava/lang/String;

    iget-object v3, p1, Lcom/braze/configuration/BrazeConfig$Builder;->smallNotificationIconName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->largeNotificationIconName:Ljava/lang/String;

    iget-object v3, p1, Lcom/braze/configuration/BrazeConfig$Builder;->largeNotificationIconName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->customEndpoint:Ljava/lang/String;

    iget-object v3, p1, Lcom/braze/configuration/BrazeConfig$Builder;->customEndpoint:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->defaultNotificationChannelName:Ljava/lang/String;

    iget-object v3, p1, Lcom/braze/configuration/BrazeConfig$Builder;->defaultNotificationChannelName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->defaultNotificationChannelDescription:Ljava/lang/String;

    iget-object v3, p1, Lcom/braze/configuration/BrazeConfig$Builder;->defaultNotificationChannelDescription:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->pushDeepLinkBackStackActivityClassName:Ljava/lang/String;

    iget-object v3, p1, Lcom/braze/configuration/BrazeConfig$Builder;->pushDeepLinkBackStackActivityClassName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->firebaseCloudMessagingSenderIdKey:Ljava/lang/String;

    iget-object v3, p1, Lcom/braze/configuration/BrazeConfig$Builder;->firebaseCloudMessagingSenderIdKey:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->customHtmlWebViewActivityClassName:Ljava/lang/String;

    iget-object v3, p1, Lcom/braze/configuration/BrazeConfig$Builder;->customHtmlWebViewActivityClassName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->sdkFlavor:Lcom/braze/enums/SdkFlavor;

    iget-object v3, p1, Lcom/braze/configuration/BrazeConfig$Builder;->sdkFlavor:Lcom/braze/enums/SdkFlavor;

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->sessionTimeout:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/braze/configuration/BrazeConfig$Builder;->sessionTimeout:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->defaultNotificationAccentColor:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/braze/configuration/BrazeConfig$Builder;->defaultNotificationAccentColor:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->triggerActionMinimumTimeIntervalSeconds:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/braze/configuration/BrazeConfig$Builder;->triggerActionMinimumTimeIntervalSeconds:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->badNetworkInterval:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/braze/configuration/BrazeConfig$Builder;->badNetworkInterval:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->goodNetworkInterval:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/braze/configuration/BrazeConfig$Builder;->goodNetworkInterval:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->greatNetworkInterval:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/braze/configuration/BrazeConfig$Builder;->greatNetworkInterval:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->inAppMessageWebViewClientMaxOnPageFinishedWaitMs:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/braze/configuration/BrazeConfig$Builder;->inAppMessageWebViewClientMaxOnPageFinishedWaitMs:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->admMessagingRegistrationEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/braze/configuration/BrazeConfig$Builder;->admMessagingRegistrationEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->handlePushDeepLinksAutomatically:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/braze/configuration/BrazeConfig$Builder;->handlePushDeepLinksAutomatically:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isLocationCollectionEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/braze/configuration/BrazeConfig$Builder;->isLocationCollectionEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_16
    iget-object v1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isNewsFeedVisualIndicatorOn:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/braze/configuration/BrazeConfig$Builder;->isNewsFeedVisualIndicatorOn:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isPushDeepLinkBackStackActivityEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/braze/configuration/BrazeConfig$Builder;->isPushDeepLinkBackStackActivityEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v2

    :cond_18
    iget-object v1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isSessionStartBasedTimeoutEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/braze/configuration/BrazeConfig$Builder;->isSessionStartBasedTimeoutEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return v2

    :cond_19
    iget-object v1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isFirebaseCloudMessagingRegistrationEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/braze/configuration/BrazeConfig$Builder;->isFirebaseCloudMessagingRegistrationEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v2

    :cond_1a
    iget-object v1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isContentCardsUnreadVisualIndicatorEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/braze/configuration/BrazeConfig$Builder;->isContentCardsUnreadVisualIndicatorEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    return v2

    :cond_1b
    iget-object v1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isInAppMessageAccessibilityExclusiveModeEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/braze/configuration/BrazeConfig$Builder;->isInAppMessageAccessibilityExclusiveModeEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    return v2

    :cond_1c
    iget-object v1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isPushWakeScreenForNotificationEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/braze/configuration/BrazeConfig$Builder;->isPushWakeScreenForNotificationEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    return v2

    :cond_1d
    iget-object v1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isPushHtmlRenderingEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/braze/configuration/BrazeConfig$Builder;->isPushHtmlRenderingEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isGeofencesEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/braze/configuration/BrazeConfig$Builder;->isGeofencesEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    return v2

    :cond_1f
    iget-object v1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->inAppMessageTestPushEagerDisplayEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/braze/configuration/BrazeConfig$Builder;->inAppMessageTestPushEagerDisplayEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    return v2

    :cond_20
    iget-object v1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->automaticGeofenceRequestsEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/braze/configuration/BrazeConfig$Builder;->automaticGeofenceRequestsEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    return v2

    :cond_21
    iget-object v1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isFirebaseMessagingServiceOnNewTokenRegistrationEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/braze/configuration/BrazeConfig$Builder;->isFirebaseMessagingServiceOnNewTokenRegistrationEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isTouchModeRequiredForHtmlInAppMessages:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/braze/configuration/BrazeConfig$Builder;->isTouchModeRequiredForHtmlInAppMessages:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    return v2

    :cond_23
    iget-object v1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isSdkAuthEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/braze/configuration/BrazeConfig$Builder;->isSdkAuthEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    return v2

    :cond_24
    iget-object v1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->deviceObjectAllowlist:Ljava/util/EnumSet;

    iget-object v3, p1, Lcom/braze/configuration/BrazeConfig$Builder;->deviceObjectAllowlist:Ljava/util/EnumSet;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    return v2

    :cond_25
    iget-object v1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isDeviceObjectAllowlistEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/braze/configuration/BrazeConfig$Builder;->isDeviceObjectAllowlistEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    return v2

    :cond_26
    iget-object v1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->brazeSdkMetadata:Ljava/util/EnumSet;

    iget-object v3, p1, Lcom/braze/configuration/BrazeConfig$Builder;->brazeSdkMetadata:Ljava/util/EnumSet;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    return v2

    :cond_27
    iget-object v1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->customLocationProviderNames:Ljava/util/EnumSet;

    iget-object v3, p1, Lcom/braze/configuration/BrazeConfig$Builder;->customLocationProviderNames:Ljava/util/EnumSet;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    return v2

    :cond_28
    iget-object v1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isHtmlInAppMessageApplyWindowInsetsEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/braze/configuration/BrazeConfig$Builder;->isHtmlInAppMessageApplyWindowInsetsEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget-object v1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->doesPushStoryDismissOnClick:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/braze/configuration/BrazeConfig$Builder;->doesPushStoryDismissOnClick:Ljava/lang/Boolean;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2a

    return v2

    :cond_2a
    return v0
.end method

.method public final getAdmMessagingRegistrationEnabled$android_sdk_base_release()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->admMessagingRegistrationEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getApiKey$android_sdk_base_release()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->apiKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getAutomaticGeofenceRequestsEnabled$android_sdk_base_release()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->automaticGeofenceRequestsEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getBadNetworkInterval$android_sdk_base_release()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->badNetworkInterval:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getBrazeSdkMetadata$android_sdk_base_release()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/braze/enums/BrazeSdkMetadata;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->brazeSdkMetadata:Ljava/util/EnumSet;

    return-object v0
.end method

.method public final getCustomEndpoint$android_sdk_base_release()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->customEndpoint:Ljava/lang/String;

    return-object v0
.end method

.method public final getCustomHtmlWebViewActivityClassName$android_sdk_base_release()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->customHtmlWebViewActivityClassName:Ljava/lang/String;

    return-object v0
.end method

.method public final getCustomLocationProviderNames$android_sdk_base_release()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/braze/enums/LocationProviderName;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->customLocationProviderNames:Ljava/util/EnumSet;

    return-object v0
.end method

.method public final getDefaultNotificationAccentColor$android_sdk_base_release()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->defaultNotificationAccentColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getDefaultNotificationChannelDescription$android_sdk_base_release()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->defaultNotificationChannelDescription:Ljava/lang/String;

    return-object v0
.end method

.method public final getDefaultNotificationChannelName$android_sdk_base_release()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->defaultNotificationChannelName:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceObjectAllowlist$android_sdk_base_release()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/braze/enums/DeviceKey;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->deviceObjectAllowlist:Ljava/util/EnumSet;

    return-object v0
.end method

.method public final getDoesPushStoryDismissOnClick$android_sdk_base_release()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->doesPushStoryDismissOnClick:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getFirebaseCloudMessagingSenderIdKey$android_sdk_base_release()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->firebaseCloudMessagingSenderIdKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getGoodNetworkInterval$android_sdk_base_release()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->goodNetworkInterval:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getGreatNetworkInterval$android_sdk_base_release()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->greatNetworkInterval:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getHandlePushDeepLinksAutomatically$android_sdk_base_release()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->handlePushDeepLinksAutomatically:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getInAppMessageTestPushEagerDisplayEnabled$android_sdk_base_release()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->inAppMessageTestPushEagerDisplayEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getInAppMessageWebViewClientMaxOnPageFinishedWaitMs$android_sdk_base_release()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->inAppMessageWebViewClientMaxOnPageFinishedWaitMs:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getLargeNotificationIconName$android_sdk_base_release()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->largeNotificationIconName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPushDeepLinkBackStackActivityClassName$android_sdk_base_release()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->pushDeepLinkBackStackActivityClassName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSdkFlavor$android_sdk_base_release()Lcom/braze/enums/SdkFlavor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->sdkFlavor:Lcom/braze/enums/SdkFlavor;

    return-object v0
.end method

.method public final getServerTarget$android_sdk_base_release()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->serverTarget:Ljava/lang/String;

    return-object v0
.end method

.method public final getSessionTimeout$android_sdk_base_release()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->sessionTimeout:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getSmallNotificationIconName$android_sdk_base_release()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->smallNotificationIconName:Ljava/lang/String;

    return-object v0
.end method

.method public final getTriggerActionMinimumTimeIntervalSeconds$android_sdk_base_release()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->triggerActionMinimumTimeIntervalSeconds:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->apiKey:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->serverTarget:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->smallNotificationIconName:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->largeNotificationIconName:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->customEndpoint:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->defaultNotificationChannelName:Ljava/lang/String;

    if-nez v2, :cond_5

    move v2, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->defaultNotificationChannelDescription:Ljava/lang/String;

    if-nez v2, :cond_6

    move v2, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->pushDeepLinkBackStackActivityClassName:Ljava/lang/String;

    if-nez v2, :cond_7

    move v2, v1

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->firebaseCloudMessagingSenderIdKey:Ljava/lang/String;

    if-nez v2, :cond_8

    move v2, v1

    goto :goto_8

    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->customHtmlWebViewActivityClassName:Ljava/lang/String;

    if-nez v2, :cond_9

    move v2, v1

    goto :goto_9

    :cond_9
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->sdkFlavor:Lcom/braze/enums/SdkFlavor;

    if-nez v2, :cond_a

    move v2, v1

    goto :goto_a

    :cond_a
    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->sessionTimeout:Ljava/lang/Integer;

    if-nez v2, :cond_b

    move v2, v1

    goto :goto_b

    :cond_b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->defaultNotificationAccentColor:Ljava/lang/Integer;

    if-nez v2, :cond_c

    move v2, v1

    goto :goto_c

    :cond_c
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->triggerActionMinimumTimeIntervalSeconds:Ljava/lang/Integer;

    if-nez v2, :cond_d

    move v2, v1

    goto :goto_d

    :cond_d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->badNetworkInterval:Ljava/lang/Integer;

    if-nez v2, :cond_e

    move v2, v1

    goto :goto_e

    :cond_e
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->goodNetworkInterval:Ljava/lang/Integer;

    if-nez v2, :cond_f

    move v2, v1

    goto :goto_f

    :cond_f
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->greatNetworkInterval:Ljava/lang/Integer;

    if-nez v2, :cond_10

    move v2, v1

    goto :goto_10

    :cond_10
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_10
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->inAppMessageWebViewClientMaxOnPageFinishedWaitMs:Ljava/lang/Integer;

    if-nez v2, :cond_11

    move v2, v1

    goto :goto_11

    :cond_11
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_11
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->admMessagingRegistrationEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_12

    move v2, v1

    goto :goto_12

    :cond_12
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_12
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->handlePushDeepLinksAutomatically:Ljava/lang/Boolean;

    if-nez v2, :cond_13

    move v2, v1

    goto :goto_13

    :cond_13
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_13
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isLocationCollectionEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_14

    move v2, v1

    goto :goto_14

    :cond_14
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_14
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isNewsFeedVisualIndicatorOn:Ljava/lang/Boolean;

    if-nez v2, :cond_15

    move v2, v1

    goto :goto_15

    :cond_15
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_15
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isPushDeepLinkBackStackActivityEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_16

    move v2, v1

    goto :goto_16

    :cond_16
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_16
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isSessionStartBasedTimeoutEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_17

    move v2, v1

    goto :goto_17

    :cond_17
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isFirebaseCloudMessagingRegistrationEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_18

    move v2, v1

    goto :goto_18

    :cond_18
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_18
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isContentCardsUnreadVisualIndicatorEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_19

    move v2, v1

    goto :goto_19

    :cond_19
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_19
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isInAppMessageAccessibilityExclusiveModeEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_1a

    move v2, v1

    goto :goto_1a

    :cond_1a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isPushWakeScreenForNotificationEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_1b

    move v2, v1

    goto :goto_1b

    :cond_1b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isPushHtmlRenderingEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_1c

    move v2, v1

    goto :goto_1c

    :cond_1c
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isGeofencesEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_1d

    move v2, v1

    goto :goto_1d

    :cond_1d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->inAppMessageTestPushEagerDisplayEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_1e

    move v2, v1

    goto :goto_1e

    :cond_1e
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->automaticGeofenceRequestsEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_1f

    move v2, v1

    goto :goto_1f

    :cond_1f
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isFirebaseMessagingServiceOnNewTokenRegistrationEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_20

    move v2, v1

    goto :goto_20

    :cond_20
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_20
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isTouchModeRequiredForHtmlInAppMessages:Ljava/lang/Boolean;

    if-nez v2, :cond_21

    move v2, v1

    goto :goto_21

    :cond_21
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_21
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isSdkAuthEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_22

    move v2, v1

    goto :goto_22

    :cond_22
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_22
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->deviceObjectAllowlist:Ljava/util/EnumSet;

    if-nez v2, :cond_23

    move v2, v1

    goto :goto_23

    :cond_23
    invoke-virtual {v2}, Ljava/util/EnumSet;->hashCode()I

    move-result v2

    :goto_23
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isDeviceObjectAllowlistEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_24

    move v2, v1

    goto :goto_24

    :cond_24
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->brazeSdkMetadata:Ljava/util/EnumSet;

    if-nez v2, :cond_25

    move v2, v1

    goto :goto_25

    :cond_25
    invoke-virtual {v2}, Ljava/util/EnumSet;->hashCode()I

    move-result v2

    :goto_25
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->customLocationProviderNames:Ljava/util/EnumSet;

    if-nez v2, :cond_26

    move v2, v1

    goto :goto_26

    :cond_26
    invoke-virtual {v2}, Ljava/util/EnumSet;->hashCode()I

    move-result v2

    :goto_26
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isHtmlInAppMessageApplyWindowInsetsEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_27

    move v2, v1

    goto :goto_27

    :cond_27
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_27
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->doesPushStoryDismissOnClick:Ljava/lang/Boolean;

    if-nez v2, :cond_28

    goto :goto_28

    :cond_28
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_28
    add-int/2addr v0, v1

    return v0
.end method

.method public final isContentCardsUnreadVisualIndicatorEnabled$android_sdk_base_release()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isContentCardsUnreadVisualIndicatorEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isDeviceObjectAllowlistEnabled$android_sdk_base_release()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isDeviceObjectAllowlistEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isFirebaseCloudMessagingRegistrationEnabled$android_sdk_base_release()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isFirebaseCloudMessagingRegistrationEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isFirebaseMessagingServiceOnNewTokenRegistrationEnabled$android_sdk_base_release()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isFirebaseMessagingServiceOnNewTokenRegistrationEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isGeofencesEnabled$android_sdk_base_release()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isGeofencesEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isHtmlInAppMessageApplyWindowInsetsEnabled$android_sdk_base_release()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isHtmlInAppMessageApplyWindowInsetsEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isInAppMessageAccessibilityExclusiveModeEnabled$android_sdk_base_release()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isInAppMessageAccessibilityExclusiveModeEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isLocationCollectionEnabled$android_sdk_base_release()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isLocationCollectionEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isNewsFeedVisualIndicatorOn$android_sdk_base_release()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isNewsFeedVisualIndicatorOn:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isPushDeepLinkBackStackActivityEnabled$android_sdk_base_release()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isPushDeepLinkBackStackActivityEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isPushHtmlRenderingEnabled$android_sdk_base_release()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isPushHtmlRenderingEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isPushWakeScreenForNotificationEnabled$android_sdk_base_release()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isPushWakeScreenForNotificationEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isSdkAuthEnabled$android_sdk_base_release()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isSdkAuthEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isSessionStartBasedTimeoutEnabled$android_sdk_base_release()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isSessionStartBasedTimeoutEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isTouchModeRequiredForHtmlInAppMessages$android_sdk_base_release()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isTouchModeRequiredForHtmlInAppMessages:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final setAdmMessagingRegistrationEnabled(Z)Lcom/braze/configuration/BrazeConfig$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->admMessagingRegistrationEnabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setAdmMessagingRegistrationEnabled$android_sdk_base_release(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->admMessagingRegistrationEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public final setApiKey(Ljava/lang/String;)Lcom/braze/configuration/BrazeConfig$Builder;
    .locals 8

    const-string v0, "apiKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->apiKey:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v5, Lcom/braze/configuration/BrazeConfig$Builder$a;->b:Lcom/braze/configuration/BrazeConfig$Builder$a;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method public final setApiKey$android_sdk_base_release(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->apiKey:Ljava/lang/String;

    return-void
.end method

.method public final setAutomaticGeofenceRequestsEnabled(Z)Lcom/braze/configuration/BrazeConfig$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->automaticGeofenceRequestsEnabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setAutomaticGeofenceRequestsEnabled$android_sdk_base_release(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->automaticGeofenceRequestsEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public final setBadNetworkDataFlushInterval(I)Lcom/braze/configuration/BrazeConfig$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->badNetworkInterval:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setBadNetworkInterval$android_sdk_base_release(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->badNetworkInterval:Ljava/lang/Integer;

    return-void
.end method

.method public final setBrazeSdkMetadata$android_sdk_base_release(Ljava/util/EnumSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/braze/enums/BrazeSdkMetadata;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->brazeSdkMetadata:Ljava/util/EnumSet;

    return-void
.end method

.method public final setContentCardsUnreadVisualIndicatorEnabled(Z)Lcom/braze/configuration/BrazeConfig$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isContentCardsUnreadVisualIndicatorEnabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setContentCardsUnreadVisualIndicatorEnabled$android_sdk_base_release(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isContentCardsUnreadVisualIndicatorEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public final setCustomEndpoint(Ljava/lang/String;)Lcom/braze/configuration/BrazeConfig$Builder;
    .locals 1

    const-string v0, "customEndpoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->customEndpoint:Ljava/lang/String;

    return-object p0
.end method

.method public final setCustomEndpoint$android_sdk_base_release(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->customEndpoint:Ljava/lang/String;

    return-void
.end method

.method public final setCustomHtmlWebViewActivityClassName$android_sdk_base_release(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->customHtmlWebViewActivityClassName:Ljava/lang/String;

    return-void
.end method

.method public final setCustomLocationProviderNames(Ljava/util/EnumSet;)Lcom/braze/configuration/BrazeConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/braze/enums/LocationProviderName;",
            ">;)",
            "Lcom/braze/configuration/BrazeConfig$Builder;"
        }
    .end annotation

    const-string v0, "locationProviderNames"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->customLocationProviderNames:Ljava/util/EnumSet;

    return-object p0
.end method

.method public final setCustomLocationProviderNames$android_sdk_base_release(Ljava/util/EnumSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/braze/enums/LocationProviderName;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->customLocationProviderNames:Ljava/util/EnumSet;

    return-void
.end method

.method public final setCustomWebViewActivityClass(Ljava/lang/Class;)Lcom/braze/configuration/BrazeConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/braze/configuration/BrazeConfig$Builder;"
        }
    .end annotation

    const-string v0, "customWebViewActivityClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->customHtmlWebViewActivityClassName:Ljava/lang/String;

    return-object p0
.end method

.method public final setDefaultNotificationAccentColor(I)Lcom/braze/configuration/BrazeConfig$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->defaultNotificationAccentColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setDefaultNotificationAccentColor$android_sdk_base_release(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->defaultNotificationAccentColor:Ljava/lang/Integer;

    return-void
.end method

.method public final setDefaultNotificationChannelDescription(Ljava/lang/String;)Lcom/braze/configuration/BrazeConfig$Builder;
    .locals 8

    const-string v0, "description"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->defaultNotificationChannelDescription:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v5, Lcom/braze/configuration/BrazeConfig$Builder$b;->b:Lcom/braze/configuration/BrazeConfig$Builder$b;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method public final setDefaultNotificationChannelDescription$android_sdk_base_release(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->defaultNotificationChannelDescription:Ljava/lang/String;

    return-void
.end method

.method public final setDefaultNotificationChannelName(Ljava/lang/String;)Lcom/braze/configuration/BrazeConfig$Builder;
    .locals 8

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->defaultNotificationChannelName:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v5, Lcom/braze/configuration/BrazeConfig$Builder$c;->b:Lcom/braze/configuration/BrazeConfig$Builder$c;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method public final setDefaultNotificationChannelName$android_sdk_base_release(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->defaultNotificationChannelName:Ljava/lang/String;

    return-void
.end method

.method public final setDeviceObjectAllowlist(Ljava/util/EnumSet;)Lcom/braze/configuration/BrazeConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/braze/enums/DeviceKey;",
            ">;)",
            "Lcom/braze/configuration/BrazeConfig$Builder;"
        }
    .end annotation

    const-string v0, "deviceObjectAllowlist"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->deviceObjectAllowlist:Ljava/util/EnumSet;

    return-object p0
.end method

.method public final setDeviceObjectAllowlist$android_sdk_base_release(Ljava/util/EnumSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/braze/enums/DeviceKey;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->deviceObjectAllowlist:Ljava/util/EnumSet;

    return-void
.end method

.method public final setDeviceObjectAllowlistEnabled(Z)Lcom/braze/configuration/BrazeConfig$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isDeviceObjectAllowlistEnabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setDeviceObjectAllowlistEnabled$android_sdk_base_release(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isDeviceObjectAllowlistEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public final setDeviceObjectWhitelist(Ljava/util/EnumSet;)Lcom/braze/configuration/BrazeConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/braze/enums/DeviceKey;",
            ">;)",
            "Lcom/braze/configuration/BrazeConfig$Builder;"
        }
    .end annotation
    .annotation runtime Lkotlin/Deprecated;
        message = "Use {@link #setDeviceObjectAllowlist(EnumSet)}"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "setDeviceObjectAllowlist"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "deviceObjectAllowlist"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/braze/configuration/BrazeConfig$Builder;->setDeviceObjectAllowlist(Ljava/util/EnumSet;)Lcom/braze/configuration/BrazeConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setDeviceObjectWhitelistEnabled(Z)Lcom/braze/configuration/BrazeConfig$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use {@link #setDeviceObjectAllowlistEnabled(boolean)}"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "setDeviceObjectAllowlistEnabled"
            imports = {}
        .end subannotation
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/braze/configuration/BrazeConfig$Builder;->setDeviceObjectAllowlistEnabled(Z)Lcom/braze/configuration/BrazeConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setDoesPushStoryDismissOnClick(Z)Lcom/braze/configuration/BrazeConfig$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->doesPushStoryDismissOnClick:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setDoesPushStoryDismissOnClick$android_sdk_base_release(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->doesPushStoryDismissOnClick:Ljava/lang/Boolean;

    return-void
.end method

.method public final setFirebaseCloudMessagingRegistrationEnabled$android_sdk_base_release(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isFirebaseCloudMessagingRegistrationEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public final setFirebaseCloudMessagingSenderIdKey(Ljava/lang/String;)Lcom/braze/configuration/BrazeConfig$Builder;
    .locals 8

    const-string v0, "firebaseSenderId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->firebaseCloudMessagingSenderIdKey:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v5, Lcom/braze/configuration/BrazeConfig$Builder$d;->b:Lcom/braze/configuration/BrazeConfig$Builder$d;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method public final setFirebaseCloudMessagingSenderIdKey$android_sdk_base_release(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->firebaseCloudMessagingSenderIdKey:Ljava/lang/String;

    return-void
.end method

.method public final setFirebaseMessagingServiceOnNewTokenRegistrationEnabled$android_sdk_base_release(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isFirebaseMessagingServiceOnNewTokenRegistrationEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public final setGeofencesEnabled(Z)Lcom/braze/configuration/BrazeConfig$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isGeofencesEnabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setGeofencesEnabled$android_sdk_base_release(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isGeofencesEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public final setGoodNetworkDataFlushInterval(I)Lcom/braze/configuration/BrazeConfig$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->goodNetworkInterval:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setGoodNetworkInterval$android_sdk_base_release(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->goodNetworkInterval:Ljava/lang/Integer;

    return-void
.end method

.method public final setGreatNetworkDataFlushInterval(I)Lcom/braze/configuration/BrazeConfig$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->greatNetworkInterval:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setGreatNetworkInterval$android_sdk_base_release(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->greatNetworkInterval:Ljava/lang/Integer;

    return-void
.end method

.method public final setHandlePushDeepLinksAutomatically(Z)Lcom/braze/configuration/BrazeConfig$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->handlePushDeepLinksAutomatically:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setHandlePushDeepLinksAutomatically$android_sdk_base_release(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->handlePushDeepLinksAutomatically:Ljava/lang/Boolean;

    return-void
.end method

.method public final setHtmlInAppMessageApplyWindowInsetsEnabled$android_sdk_base_release(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isHtmlInAppMessageApplyWindowInsetsEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public final setInAppMessageAccessibilityExclusiveModeEnabled$android_sdk_base_release(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isInAppMessageAccessibilityExclusiveModeEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public final setInAppMessageTestPushEagerDisplayEnabled(Z)Lcom/braze/configuration/BrazeConfig$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->inAppMessageTestPushEagerDisplayEnabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setInAppMessageTestPushEagerDisplayEnabled$android_sdk_base_release(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->inAppMessageTestPushEagerDisplayEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public final setInAppMessageWebViewClientMaxOnPageFinishedWaitMs(I)Lcom/braze/configuration/BrazeConfig$Builder;
    .locals 7

    if-ltz p1, :cond_0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->inAppMessageWebViewClientMaxOnPageFinishedWaitMs:Ljava/lang/Integer;

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v4, Lcom/braze/configuration/BrazeConfig$Builder$e;

    invoke-direct {v4, p1}, Lcom/braze/configuration/BrazeConfig$Builder$e;-><init>(I)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method public final setInAppMessageWebViewClientMaxOnPageFinishedWaitMs$android_sdk_base_release(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->inAppMessageWebViewClientMaxOnPageFinishedWaitMs:Ljava/lang/Integer;

    return-void
.end method

.method public final setIsFirebaseCloudMessagingRegistrationEnabled(Z)Lcom/braze/configuration/BrazeConfig$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isFirebaseCloudMessagingRegistrationEnabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setIsFirebaseMessagingServiceOnNewTokenRegistrationEnabled(Z)Lcom/braze/configuration/BrazeConfig$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isFirebaseMessagingServiceOnNewTokenRegistrationEnabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setIsHtmlInAppMessageApplyWindowInsetsEnabled(Z)Lcom/braze/configuration/BrazeConfig$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isHtmlInAppMessageApplyWindowInsetsEnabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setIsInAppMessageAccessibilityExclusiveModeEnabled(Z)Lcom/braze/configuration/BrazeConfig$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isInAppMessageAccessibilityExclusiveModeEnabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setIsLocationCollectionEnabled(Z)Lcom/braze/configuration/BrazeConfig$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isLocationCollectionEnabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setIsPushWakeScreenForNotificationEnabled(Z)Lcom/braze/configuration/BrazeConfig$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isPushWakeScreenForNotificationEnabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setIsSdkAuthenticationEnabled(Z)Lcom/braze/configuration/BrazeConfig$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isSdkAuthEnabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setIsSessionStartBasedTimeoutEnabled(Z)Lcom/braze/configuration/BrazeConfig$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isSessionStartBasedTimeoutEnabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setIsTouchModeRequiredForHtmlInAppMessages(Z)Lcom/braze/configuration/BrazeConfig$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isTouchModeRequiredForHtmlInAppMessages:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setLargeNotificationIcon(Ljava/lang/String;)Lcom/braze/configuration/BrazeConfig$Builder;
    .locals 1

    const-string v0, "largeNotificationIconName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->largeNotificationIconName:Ljava/lang/String;

    return-object p0
.end method

.method public final setLargeNotificationIconName$android_sdk_base_release(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->largeNotificationIconName:Ljava/lang/String;

    return-void
.end method

.method public final setLocationCollectionEnabled$android_sdk_base_release(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isLocationCollectionEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public final setNewsFeedVisualIndicatorOn$android_sdk_base_release(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isNewsFeedVisualIndicatorOn:Ljava/lang/Boolean;

    return-void
.end method

.method public final setNewsfeedVisualIndicatorOn(Z)Lcom/braze/configuration/BrazeConfig$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isNewsFeedVisualIndicatorOn:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setPushDeepLinkBackStackActivityClass(Ljava/lang/Class;)Lcom/braze/configuration/BrazeConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/braze/configuration/BrazeConfig$Builder;"
        }
    .end annotation

    const-string v0, "pushDeepLinkActivityClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->pushDeepLinkBackStackActivityClassName:Ljava/lang/String;

    return-object p0
.end method

.method public final setPushDeepLinkBackStackActivityClassName$android_sdk_base_release(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->pushDeepLinkBackStackActivityClassName:Ljava/lang/String;

    return-void
.end method

.method public final setPushDeepLinkBackStackActivityEnabled(Z)Lcom/braze/configuration/BrazeConfig$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isPushDeepLinkBackStackActivityEnabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setPushDeepLinkBackStackActivityEnabled$android_sdk_base_release(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isPushDeepLinkBackStackActivityEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public final setPushHtmlRenderingEnabled(Z)Lcom/braze/configuration/BrazeConfig$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isPushHtmlRenderingEnabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setPushHtmlRenderingEnabled$android_sdk_base_release(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isPushHtmlRenderingEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public final setPushWakeScreenForNotificationEnabled$android_sdk_base_release(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isPushWakeScreenForNotificationEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public final setSdkAuthEnabled$android_sdk_base_release(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isSdkAuthEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public final setSdkFlavor(Lcom/braze/enums/SdkFlavor;)Lcom/braze/configuration/BrazeConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->sdkFlavor:Lcom/braze/enums/SdkFlavor;

    return-object p0
.end method

.method public final setSdkFlavor$android_sdk_base_release(Lcom/braze/enums/SdkFlavor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->sdkFlavor:Lcom/braze/enums/SdkFlavor;

    return-void
.end method

.method public final setSdkMetadata(Ljava/util/EnumSet;)Lcom/braze/configuration/BrazeConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/braze/enums/BrazeSdkMetadata;",
            ">;)",
            "Lcom/braze/configuration/BrazeConfig$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->brazeSdkMetadata:Ljava/util/EnumSet;

    return-object p0
.end method

.method public final setServerTarget(Ljava/lang/String;)Lcom/braze/configuration/BrazeConfig$Builder;
    .locals 1

    const/4 v0, 0x0

    sget-object v0, Lcom/google/android/datatransport/runtime/dagger/multibindings/LdZM/lcNKOYBQdOzfHI;->GkUgilcJ:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->serverTarget:Ljava/lang/String;

    return-object p0
.end method

.method public final setServerTarget$android_sdk_base_release(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->serverTarget:Ljava/lang/String;

    return-void
.end method

.method public final setSessionStartBasedTimeoutEnabled$android_sdk_base_release(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isSessionStartBasedTimeoutEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public final setSessionTimeout(I)Lcom/braze/configuration/BrazeConfig$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->sessionTimeout:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setSessionTimeout$android_sdk_base_release(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->sessionTimeout:Ljava/lang/Integer;

    return-void
.end method

.method public final setSmallNotificationIcon(Ljava/lang/String;)Lcom/braze/configuration/BrazeConfig$Builder;
    .locals 1

    const-string v0, "smallNotificationIconName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->smallNotificationIconName:Ljava/lang/String;

    return-object p0
.end method

.method public final setSmallNotificationIconName$android_sdk_base_release(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->smallNotificationIconName:Ljava/lang/String;

    return-void
.end method

.method public final setTouchModeRequiredForHtmlInAppMessages$android_sdk_base_release(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isTouchModeRequiredForHtmlInAppMessages:Ljava/lang/Boolean;

    return-void
.end method

.method public final setTriggerActionMinimumTimeIntervalSeconds(I)Lcom/braze/configuration/BrazeConfig$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->triggerActionMinimumTimeIntervalSeconds:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setTriggerActionMinimumTimeIntervalSeconds$android_sdk_base_release(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->triggerActionMinimumTimeIntervalSeconds:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Builder(apiKey="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->apiKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", serverTarget="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->serverTarget:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", smallNotificationIconName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->smallNotificationIconName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", largeNotificationIconName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->largeNotificationIconName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", customEndpoint="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->customEndpoint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", defaultNotificationChannelName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->defaultNotificationChannelName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", defaultNotificationChannelDescription="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->defaultNotificationChannelDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v2, Lorg/apache/james/mime4j/field/contenttype/parser/BXg/MYsPwSQBpKSLSv;->LvnOIvG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->pushDeepLinkBackStackActivityClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", firebaseCloudMessagingSenderIdKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->firebaseCloudMessagingSenderIdKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", customHtmlWebViewActivityClassName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->customHtmlWebViewActivityClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sdkFlavor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->sdkFlavor:Lcom/braze/enums/SdkFlavor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sessionTimeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->sessionTimeout:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", defaultNotificationAccentColor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->defaultNotificationAccentColor:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", triggerActionMinimumTimeIntervalSeconds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->triggerActionMinimumTimeIntervalSeconds:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", badNetworkInterval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->badNetworkInterval:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", goodNetworkInterval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->goodNetworkInterval:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", greatNetworkInterval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->greatNetworkInterval:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", inAppMessageWebViewClientMaxOnPageFinishedWaitMs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->inAppMessageWebViewClientMaxOnPageFinishedWaitMs:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admMessagingRegistrationEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->admMessagingRegistrationEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", handlePushDeepLinksAutomatically="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->handlePushDeepLinksAutomatically:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isLocationCollectionEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isLocationCollectionEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isNewsFeedVisualIndicatorOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isNewsFeedVisualIndicatorOn:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isPushDeepLinkBackStackActivityEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isPushDeepLinkBackStackActivityEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isSessionStartBasedTimeoutEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isSessionStartBasedTimeoutEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isFirebaseCloudMessagingRegistrationEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isFirebaseCloudMessagingRegistrationEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isContentCardsUnreadVisualIndicatorEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isContentCardsUnreadVisualIndicatorEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isInAppMessageAccessibilityExclusiveModeEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isInAppMessageAccessibilityExclusiveModeEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isPushWakeScreenForNotificationEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isPushWakeScreenForNotificationEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isPushHtmlRenderingEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isPushHtmlRenderingEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isGeofencesEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isGeofencesEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", inAppMessageTestPushEagerDisplayEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->inAppMessageTestPushEagerDisplayEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", automaticGeofenceRequestsEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->automaticGeofenceRequestsEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isFirebaseMessagingServiceOnNewTokenRegistrationEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isFirebaseMessagingServiceOnNewTokenRegistrationEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isTouchModeRequiredForHtmlInAppMessages="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isTouchModeRequiredForHtmlInAppMessages:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isSdkAuthEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isSdkAuthEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", deviceObjectAllowlist="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->deviceObjectAllowlist:Ljava/util/EnumSet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isDeviceObjectAllowlistEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isDeviceObjectAllowlistEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", brazeSdkMetadata="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->brazeSdkMetadata:Ljava/util/EnumSet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", customLocationProviderNames="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->customLocationProviderNames:Ljava/util/EnumSet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isHtmlInAppMessageApplyWindowInsetsEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->isHtmlInAppMessageApplyWindowInsetsEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", doesPushStoryDismissOnClick="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/braze/configuration/BrazeConfig$Builder;->doesPushStoryDismissOnClick:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
