//
// Created by Joakim Nohlgård on 2020-02-20.
//

#include "CodeKata.h"
#include "doctest.h"

TEST_CASE( "CodeKata example case" ) {

  CodeKata sut( 5 );

  REQUIRE( sut.get() == 5 );

  SUBCASE( "adding changes number" ) {
    sut.add(10);

    REQUIRE( sut.get() == 15 );
    int res = sut.add(-5);

    REQUIRE( sut.get() == 10 );
    REQUIRE( res == sut.get() );
  }
}
