.PHONY: brunner, run, btest, itest

clean := false

brunner:
	@flutter pub run build_runner build --delete-conflicting-outputs

run:
ifeq ($(clean), true)
	@flutter clean && flutter pub get
	@flutter run
else
	@flutter pub get
	@flutter run
endif

btest:
	@flutter test

itest:
	@flutter drive \
	--driver=test_driver/integration_test.dart \
	--target=integration_test/music_player_test.dart